//
//  LeeFoundClassRowViewCell.swift
//  NeteaseMusic
//
//  Created by quansheng li on 2019/7/19.
//  Copyright © 2019 quansheng. All rights reserved.
//

import UIKit

class LeeFoundClassRowViewCell: UICollectionViewCell {
    
    lazy var iconImageView: UIImageView = {
        let iconImageView =  UIImageView.init()
        self.contentView .addSubview(iconImageView)
        iconImageView.snp.makeConstraints({ (make) in
            make.left.top.right.equalTo(0)
            make.height.equalTo(self.frame.size.width)
        })
        return iconImageView
    }()
    lazy var titleLabel: UILabel = {
        let titleLabel = UILabel.init()
        self.contentView.addSubview(titleLabel)
        titleLabel.snp.makeConstraints({ (make) in
            make.top.equalTo(self.iconImageView.snp.bottom).offset(5)
            make.left.right.equalTo(0)
        })
        titleLabel.font = UIFont.systemFont(ofSize: 12)
        titleLabel.textAlignment =  NSTextAlignment.center
        return titleLabel
    }()
    
}
