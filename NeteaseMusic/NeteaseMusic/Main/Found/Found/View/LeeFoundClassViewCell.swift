//
//  LeeFoundClassViewCell.swift
//  NeteaseMusic
//
//  Created by quansheng li on 2019/7/19.
//  Copyright © 2019 quansheng. All rights reserved.
//

import UIKit
var kLeeFoundClassViewCellID = "LeeFoundClassViewCell"
class LeeFoundClassViewCell: UICollectionViewCell,UICollectionViewDelegate,UICollectionViewDataSource {
    var dataArray = [Any]()
    func showData() {
        dataArray = [
            ["title":"每日推荐","icon":"cm4_user_living_entrance_anim_logo"],
            ["title":"歌单","icon":"cm4_user_living_entrance_anim_logo"],
            ["title":"排行榜","icon":"cm4_user_living_entrance_anim_logo"],
            ["title":"电台","icon":"cm4_user_living_entrance_anim_logo"],
            ["title":"直播","icon":"cm4_user_living_entrance_anim_logo"]
        ]
        self.classCollectionView.reloadData()
        self.bottomView.backgroundColor = kGrayColor
    }
    lazy var classCollectionView: UICollectionView = {
        let flowLayout = UICollectionViewFlowLayout.init()
        flowLayout.sectionInset = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
        flowLayout.minimumInteritemSpacing = 25
        let count = dataArray.count
        let itemSpacing  = ((count - 1) *  25)
        let width  = (self.frame.size.width - 20 - CGFloat(itemSpacing)) / CGFloat(count)
        flowLayout.itemSize = CGSize(width: width, height: self.frame.size.height)
        let classCollectionView =  UICollectionView.init(frame: CGRect(x: 0, y: 0, width: self.frame.size.width, height: self.frame.size.height), collectionViewLayout: flowLayout)
        self.contentView.addSubview(classCollectionView)
        classCollectionView.backgroundColor = kWhiteColor
        classCollectionView.dataSource = self
        classCollectionView.delegate = self
        classCollectionView.register(LeeFoundClassRowViewCell.classForCoder(), forCellWithReuseIdentifier: "LeeFoundClassRowViewCell")
        return classCollectionView
    }()
    lazy var bottomView: UIView = {
        let bottomView = UIView.init()
        self.contentView.addSubview(bottomView)
        bottomView.snp.makeConstraints({ (make) in
            make.left.right.bottom.equalTo(0)
            make.height.equalTo(0.3)
        })
        return bottomView
    }()
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataArray.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let foundClassRowViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "LeeFoundClassRowViewCell", for: indexPath) as! LeeFoundClassRowViewCell
        let dicData:[String:String] = self.dataArray[indexPath.row] as! [String : String]
        foundClassRowViewCell.iconImageView.image = UIImage(named: dicData["icon"] ?? "")
        foundClassRowViewCell.titleLabel.text = dicData["title"]
        return foundClassRowViewCell
        
    }
}

