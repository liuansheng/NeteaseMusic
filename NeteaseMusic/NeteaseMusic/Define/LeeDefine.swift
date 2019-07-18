//
//  LeeDefine.swift
//  NeteaseMusic
//
//  Created by quansheng li on 2019/7/16.
//  Copyright © 2019 quansheng. All rights reserved.
//

import Foundation
import UIKit
import SnapKit
/// 请求地址
let kBaseUrl = "http://localhost:3000"

/// 屏幕宽度
let kScreenW    = UIScreen.main.bounds.size.width
/// 屏幕高度
let kScreenH    = UIScreen.main.bounds.size.height
/// 状态栏宽度
let kStatusW    = UIApplication.shared.statusBarFrame.size.width
/// 状态栏高度
let kStatusH    = UIApplication.shared.statusBarFrame.size.height




/// 白色
let kWhiteColor = UIColor.white
/// 主题红色
let kMainColor  = kRGBColor(r: 200, g: 45, b: 34)
//  TabBar灰色
let kGrayColor  =  kRGBColor(r: 108, g: 108, b: 108)


func kRGBColor(r:CGFloat,g:CGFloat,b:CGFloat) -> UIColor {
    return UIColor.init(red: r/255.0, green: g/255.0, blue: b/255.0, alpha: 1)
}


