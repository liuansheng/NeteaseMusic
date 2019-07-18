//
//  LeeUIImageView.swift
//  NeteaseMusic
//
//  Created by quansheng li on 2019/7/18.
//  Copyright © 2019 quansheng. All rights reserved.
//

import UIKit
import Kingfisher


extension  UIImageView {
    /// 加载网络图片
    /// - Parameter url: 图片地址
    public func setImageViewWithUrl(url:String) {
         self.kf.setImage(with: URL(string: url))
    }
}
