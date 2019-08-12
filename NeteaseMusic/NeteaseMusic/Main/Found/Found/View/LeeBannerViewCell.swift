//
//  LeeBannerViewCell.swift
//  NeteaseMusic
//
//  Created by quansheng li on 2019/7/17.
//  Copyright © 2019 quansheng. All rights reserved.
//

import UIKit
import FSPagerView
import Kingfisher
var kLeeBannerViewCellID = "LeeBannerViewCell"
class LeeBannerViewCell: UICollectionViewCell,FSPagerViewDelegate,FSPagerViewDataSource {
    var foundVC = Lee_FoundViewController()
    func reloadBanner(foundBannerModel:LeeFoundBannerModel) {
        self.foundBannerModel = foundBannerModel
        self.viewPager.reloadData()
        self.pagerControl.numberOfPages = self.foundBannerModel.banners?.count ?? 0;
        self.pagerControl.reloadInputViews()
    }
    /// 数据源
    lazy var foundBannerModel: LeeFoundBannerModel = {
        let foundBannerModel = LeeFoundBannerModel.init()
        return foundBannerModel
    }()
    
    lazy var viewPager: FSPagerView = {
        let viewPager = FSPagerView()
        viewPager.frame = self.frame
        viewPager.dataSource = self
        viewPager.delegate = self
        viewPager.register(FSPagerViewCell.self, forCellWithReuseIdentifier: "FSPagerViewCell")
        viewPager.automaticSlidingInterval = 4.0
        viewPager.itemSize = CGSize(width: self.frame.size.width - 20, height: self.frame.size.height)
        viewPager.isInfinite = true
        viewPager.transformer = FSPagerViewTransformer(type: .zoomOut)
        self.contentView.addSubview(viewPager)
        return viewPager
    }()
    lazy var pagerControl:FSPageControl = {
        let pageControl = FSPageControl(frame: CGRect(x: 0, y: self.frame.size.height - 20, width: self.frame.size.width, height: 20))
        pageControl.contentHorizontalAlignment = .center
        pageControl.setStrokeColor(kGrayColor, for: .normal)
        pageControl.setStrokeColor(kMainColor, for: .selected)
        pageControl.setFillColor(kGrayColor, for: .normal)
        pageControl.setFillColor(kMainColor, for: .selected)
        pageControl.setPath(UIBezierPath.init(roundedRect: CGRect.init(x: 0, y: 0, width: 5, height: 5), cornerRadius: 4.0), for: .normal)
        pageControl.setPath(UIBezierPath.init(roundedRect: CGRect.init(x: 0, y: 0, width: 5, height: 5), cornerRadius: 4.0), for: .selected)
        self.contentView.addSubview(pageControl)
        return pageControl
        
    }()
    func numberOfItems(in pagerView: FSPagerView) -> Int {
        return self.foundBannerModel.banners?.count ?? 0;
    }
    func pagerView(_ pagerView: FSPagerView, cellForItemAt index: Int) -> FSPagerViewCell {
        let pagerViewCell = pagerView.dequeueReusableCell(withReuseIdentifier: "FSPagerViewCell", at: index)
        let urlString:String  = self.foundBannerModel.banners?[index].pic ?? ""
        pagerViewCell.imageView?.setImageViewWithUrl(url: urlString)
        pagerViewCell.imageView?.layer.cornerRadius = 6
        pagerViewCell.imageView?.clipsToBounds = true
        return pagerViewCell
    }
    func pagerView(_ pagerView: FSPagerView, willDisplay cell: FSPagerViewCell, forItemAt index: Int) {
        pagerControl.currentPage = index
    }
    func pagerView(_ pagerView: FSPagerView, didSelectItemAt index: Int) {
        let targetType  = self.foundBannerModel.banners?[index].targetType
        if targetType == 3000 {
            let webVC = LeeWkWebViewController.init()
            self.foundVC.navigationController?.pushViewController(webVC, animated: true)
            
        }
        
    }
}

