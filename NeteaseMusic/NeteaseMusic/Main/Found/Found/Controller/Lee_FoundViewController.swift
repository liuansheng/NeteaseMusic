//
//  Lee_FoundViewController.swift
//  NeteaseMusic
//
//  Created by quansheng li on 2019/7/16.
//  Copyright © 2019 quansheng. All rights reserved.
//

import UIKit
import CRRefresh


class Lee_FoundViewController: LeeCollectionViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configNaviBar()
        configView()
        foundBannerData()
    }
    func foundBannerData() {
        weak var weakSelf = self
        self.collectionView.addHeaderReload {
            LeeFoundNetWorking.getFoundBanner { (result, error) in
                weakSelf?.foundBannerModel = result
                weakSelf?.collectionView.reloadData()
            }
            weakSelf?.collectionView.endHeaderReload()
        }
        self.collectionView.beginHeaderReload()
    }
    
    
    func configView() {
        self.collectionView.register(LeeBannerViewCell.classForCoder(), forCellWithReuseIdentifier: kLeeBannerViewCellID)
        self.collectionView.register(LeeFoundClassViewCell.classForCoder(), forCellWithReuseIdentifier:kLeeFoundClassViewCellID)
        self.collectionView.register(LeeFounRecommendHeaderReusableView.classForCoder(), forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: kLeeFounRecommendHeaderReusableViewID)
        self.collectionView.register(UICollectionReusableView.classForCoder(), forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "UICollectionReusableView")
        
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
        return 3
    }
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if indexPath.section == 0 {
            //顶部轮播
            return CGSize(width: kScreenW, height: 140)
        }
        if indexPath.section == 2 {
            return CGSize(width: kScreenW, height: 180)
        }
        return CGSize(width: kScreenW, height: 90)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        if section == 1 {
            return CGSize(width: kScreenW, height: 10)
        }
        if section == 2 {
            return CGSize(width: kScreenW, height: 48)
        }
        return CGSize(width: kScreenW, height: 0)
    }
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.section == 0 {
            let bannerViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: kLeeBannerViewCellID, for: indexPath) as! LeeBannerViewCell
            bannerViewCell.reloadBanner(foundBannerModel: self.foundBannerModel)
            bannerViewCell.foundVC = self
            return bannerViewCell;
        }
        if indexPath.section == 1 {
            let foundClassViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: kLeeFoundClassViewCellID, for: indexPath) as! LeeFoundClassViewCell
            foundClassViewCell.showData()
            return foundClassViewCell;
        }
        let collectionViewCell =  collectionView.dequeueReusableCell(withReuseIdentifier: "UICollectionViewCell", for: indexPath)
        collectionViewCell.backgroundColor = UIColor.orange
        return collectionViewCell
    }
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        if indexPath.section == 2 {
            let founRecommendHeaderReusableView = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: kLeeFounRecommendHeaderReusableViewID, for: indexPath) as! LeeFounRecommendHeaderReusableView
            founRecommendHeaderReusableView.titleLabel.text = "推荐歌单"
            founRecommendHeaderReusableView.playerListControl.backgroundColor = UIColor.white
            return founRecommendHeaderReusableView
        }
        return collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "UICollectionReusableView", for: indexPath)
    }
    
    ///轮播数据源
    lazy var foundBannerModel: LeeFoundBannerModel = {
        let foundBannerModel = LeeFoundBannerModel.init()
        return foundBannerModel
    }()
}
