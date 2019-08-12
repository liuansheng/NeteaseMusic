//
//  LeeWkWebViewController.swift
//  NeteaseMusic
//
//  Created by quansheng li on 2019/7/19.
//  Copyright © 2019 quansheng. All rights reserved.
//

import UIKit
import WebKit
class LeeWkWebViewController: LeeBaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.wkWebView.load(URLRequest(url: URL(string: "https://www.baidu.com/")!))
        self.setCustomLeftBarButtonItem(imageName: "cm6_lay_icn_hit_Rank")
    }
    lazy var  wkWebView: WKWebView = {
        let webView = WKWebView.init()
        self.view.addSubview(webView)
        webView.snp.makeConstraints({ (make) in
            make.top.bottom.left.right.equalTo(0)
        })
        return webView
    }()
    
}
