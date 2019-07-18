//
//  LeeTabBarViewController.swift
//  NeteaseMusic
//
//  Created by quansheng li on 2019/7/16.
//  Copyright © 2019 quansheng. All rights reserved.
//

import UIKit

class LeeTabBarViewController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let foundNavi = LeeNavigationViewController.init(rootViewController: self.foundVC)
        self.viewControllers = [foundNavi]
        UITabBarItem.appearance().setTitleTextAttributes([.foregroundColor : kGrayColor], for:.normal)
        UITabBarItem.appearance().setTitleTextAttributes([.foregroundColor : kMainColor], for:.selected)
        UITabBar.appearance().tintColor = kMainColor;
    }
    
    lazy var foundVC: Lee_FoundViewController = {
        let foundVC = Lee_FoundViewController.init()
        foundVC.title = "发现"
        foundVC.tabBarItem.image = UIImage.init(imageLiteralResourceName: "cm4_btm_icn_discovery")
        foundVC.tabBarItem.selectedImage = UIImage.init(imageLiteralResourceName: "cm4_btm_icn_discovery")
        return foundVC
    }()
}
//200 45 34
