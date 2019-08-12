//
//  LeeUIScrollView.swift
//  NeteaseMusic
//
//  Created by quansheng li on 2019/7/18.
//  Copyright © 2019 quansheng. All rights reserved.
//

import UIKit
import CRRefresh
extension UIScrollView {
    
    func addHeaderReload(action:@escaping ()->()) {
        self.cr.addHeadRefresh(animator: NormalHeaderAnimator(), handler: action)
    }
    func endHeaderReload() {
        self.cr.endHeaderRefresh()
    }
    func beginHeaderReload() {
        self.cr.beginHeaderRefresh()
    }
}
