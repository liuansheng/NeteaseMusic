//
//  LeeFoundNetWorking.swift
//  NeteaseMusic
//
//  Created by quansheng li on 2019/7/18.
//  Copyright © 2019 quansheng. All rights reserved.
//

import UIKit
import Alamofire
class LeeFoundNetWorking: LeeBaseNetWorking {
    ///获得首页轮播
    class func getFoundBanner(completionHandler: @escaping (_ result:LeeFoundBannerModel,_ error: Any) -> Void) {
        //        0: pc
        //        1: android
        //        2: iphone
        //        3: ipad
        let parameters:Parameters =  ["type":2]
        self.netWorkingPost(url: "/banner",parameters: parameters) { (response,error) in
            let foundBannerModel = LeeFoundBannerModel.deserialize(from: response as? NSDictionary)
            completionHandler(foundBannerModel ?? LeeFoundBannerModel.init(),error)
        }
    }
}
