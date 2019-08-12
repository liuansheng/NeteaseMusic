//
//  LeeBaseViewController.swift
//  NeteaseMusic
//
//  Created by quansheng li on 2019/7/16.
//  Copyright © 2019 quansheng. All rights reserved.
//

import UIKit
class LeeBaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = kWhiteColor
    }
    func setCustomLeftBarButtonItem(imageName:String) {
        let leftButton = UIButton.init(type: .custom)
        leftButton.frame = CGRect(x: 0, y: 0, width: 28, height: 28)
        leftButton.setImage(UIImage.init(imageLiteralResourceName: imageName), for: .normal)
        leftButton.addTarget(self, action: #selector(leftButtonTap(sender:)), for: .touchUpInside)
        let leftItem = UIBarButtonItem.init(customView: leftButton)
        let widthItem = UIBarButtonItem.init(barButtonSystemItem: .fixedSpace, target: nil, action: nil)
        widthItem.width = 0
        self.navigationItem.leftBarButtonItems  = [widthItem,leftItem]
    }
    @objc func leftButtonTap(sender:UIButton) {
        print("打印点击事件")
    }
    
    func setCustomRightBarButtonItem(imageName:String) {
        let rightButton = UIButton.init(type: .custom)
        rightButton.frame = CGRect(x: 0, y: 0, width: 28, height: 28)
        rightButton.setImage(UIImage.init(imageLiteralResourceName: imageName), for: .normal)
        rightButton.addTarget(self, action: #selector(rightButtonTap(sender:)), for: .touchUpInside)
        let leftItem = UIBarButtonItem.init(customView: rightButton)
        let widthItem = UIBarButtonItem.init(barButtonSystemItem: .fixedSpace, target: nil, action: nil)
        widthItem.width = 0
        self.navigationItem.rightBarButtonItems  = [widthItem,leftItem]
    }
    @objc func rightButtonTap(sender:UIButton) {
        print("打印点击事件")
    }
    deinit {
        print("控制器\(NSStringFromClass(self.classForCoder))被销毁⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️")
    }
}
