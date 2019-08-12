//
//  LeeSearchNaviView.swift
//  NeteaseMusic
//
//  Created by quansheng li on 2019/7/16.
//  Copyright © 2019 quansheng. All rights reserved.
//

import UIKit
/// 无返回值回调
typealias voidBlock = (_ searchBar: UISearchBar) -> Void


class LeeSearchNaviView: LeeBaseView,UISearchBarDelegate {
    var searchBar = UISearchBar()
    /// 即将编辑回调
    var didBeginEditingBlock:voidBlock?
    func callBackBlcok(block: @escaping voidBlock) {
        didBeginEditingBlock = block
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.searchBar = UISearchBar.init(frame: CGRect(x: 0, y: 0, width: frame.size.width, height: frame.size.height))
        self.searchBar.placeholder = "搜索"
        self.searchBar.delegate = self;
        self.addSubview(self.searchBar)
        self.searchBar.subviews[0].subviews[0].removeFromSuperview()
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
        if didBeginEditingBlock != nil {
            didBeginEditingBlock!(searchBar)
        }
    }
}
