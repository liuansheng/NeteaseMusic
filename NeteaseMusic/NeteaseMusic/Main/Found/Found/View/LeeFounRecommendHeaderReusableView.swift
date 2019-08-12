//
//  LeeFounRecommendHeaderReusableView.swift
//  NeteaseMusic
//
//  Created by quansheng li on 2019/7/19.
//  Copyright © 2019 quansheng. All rights reserved.
//

import UIKit
var kLeeFounRecommendHeaderReusableViewID = "LeeFounRecommendHeaderReusableView"
class LeeFounRecommendHeaderReusableView: UICollectionReusableView {
    lazy var titleLabel: UILabel = {
        let titleLabel = UILabel.init()
        self.addSubview(titleLabel)
        titleLabel.snp.makeConstraints({ (make) in
            make.top.equalTo(20)
            make.left.equalTo(10)
        })
        return titleLabel
    }()
    lazy var playerListControl: UIControl = {
        let playerListControl = UIControl.init()
        self.addSubview(playerListControl)
        playerListControl.snp.makeConstraints({ (make) in
            make.top.equalTo(self.titleLabel.snp.top)
            make.right.equalTo(-10)
            make.bottom.equalTo(self.titleLabel.snp.bottom)
            make.width.equalTo(80)
        })
        playerListControl.layer.cornerRadius = 20.5/2
        playerListControl.clipsToBounds = true
        playerListControl.layer.borderWidth = 0.5
        playerListControl.layer.borderColor = kGrayColor.cgColor
        
        
        let memoLabel = UILabel.init()
        playerListControl.addSubview(memoLabel)
        memoLabel.snp.makeConstraints({ (make) in
            make.top.right.bottom.left.equalTo(0)
        })
        memoLabel.text = "歌单广场"
        memoLabel.font = UIFont.systemFont(ofSize: 12)
        memoLabel.textAlignment = NSTextAlignment.center
        return playerListControl
    }()
}
