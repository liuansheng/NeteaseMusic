//
//  LeeNavigationViewController.swift
//  NeteaseMusic
//
//  Created by quansheng li on 2019/7/17.
//  Copyright © 2019 quansheng. All rights reserved.
//

import UIKit

class LeeNavigationViewController: UINavigationController,UINavigationControllerDelegate {
    var popDelegate: UIGestureRecognizerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.popDelegate = self.interactivePopGestureRecognizer?.delegate
        self.delegate = self
        self.navigationBar.shadowImage = UIImage.init()
    }
    func navigationController(_ navigationController: UINavigationController, didShow viewController: UIViewController, animated: Bool) {
        if viewController == self.viewControllers[0] {
            self.interactivePopGestureRecognizer!.delegate = self.popDelegate
        }else {
            self.interactivePopGestureRecognizer!.delegate = nil
        }
    }
}
