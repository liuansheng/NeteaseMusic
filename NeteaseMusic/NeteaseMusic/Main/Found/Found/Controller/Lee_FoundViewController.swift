//
//  Lee_FoundViewController.swift
//  NeteaseMusic
//
//  Created by quansheng li on 2019/7/16.
//  Copyright © 2019 quansheng. All rights reserved.
//

import UIKit

class Lee_FoundViewController: LeeCollectionViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configNaviBar()
        configView()
        foundBannerData()
    }
    func foundBannerData() {
        weak var weakSelf = self
        LeeFoundNetWorking.getFoundBanner { (result, error) in
            weakSelf?.foundBannerModel = result
            weakSelf?.collectionView.reloadData()
        }
    }
    
    
    func configView() {
        self.collectionView.register(LeeBannerViewCell.classForCoder(), forCellWithReuseIdentifier: kLeeBannerViewCellID)
    }
    /// 配置导航栏
    func configNaviBar() {
        weak var weakSelf = self
        let searchNaviView = LeeSearchNaviView.init(frame: CGRect(x: 0, y: 0, width: kScreenW - 100, height: self.navigationController?.navigationBar.frame.size.height ?? 44))
        self.navigationItem.titleView = searchNaviView
        searchNaviView.callBackBlcok { (search) in
            search.resignFirstResponder()
            weakSelf?.navigationController?.pushViewController(Lee_FoundViewController.init(), animated: true)
        }
        self.setCustomLeftBarButtonItem(imageName: "cm6_lay_icn_hit_Rank")
        self.setCustomRightBarButtonItem(imageName: "cm6_lay_icn_hit_Rank")
    }
    override func leftButtonTap(sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    override func rightButtonTap(sender: UIButton) {
        
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if indexPath.section == 0 {
            //顶部轮播
            return CGSize(width: kScreenW, height: 140)
        }
        return CGSize(width: kScreenW, height: 0)
    }
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let bannerViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: kLeeBannerViewCellID, for: indexPath) as! LeeBannerViewCell
        bannerViewCell.reloadBanner(foundBannerModel: self.foundBannerModel)
        return bannerViewCell;
    }
    ///轮播数据源
    lazy var foundBannerModel: LeeFoundBannerModel = {
        let foundBannerModel = LeeFoundBannerModel.init()
        return foundBannerModel
    }()
}
