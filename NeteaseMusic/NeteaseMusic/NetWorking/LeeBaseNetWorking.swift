//
//  LeeBaseNetWorking.swift
//  NeteaseMusic
//
//  Created by quansheng li on 2019/7/18.
//  Copyright © 2019 quansheng. All rights reserved.
//

import UIKit
import Alamofire
class LeeBaseNetWorking: NSObject {
    
    class func netWorkingPost(url:String,parameters:Parameters,completionHandler: @escaping (_ result:Any,_ error: Any) -> Void) {
        let netUrl = kBaseUrl + url
        Alamofire.request(netUrl, method: .post, parameters:["type":2]).responseJSON { (response) in
            print("response.request:\(response.request as Any)")
            print("response.value:\(response.value as Any)")
            print("response.error:\(response.error as Any)")
            completionHandler(response.value as Any,response.error as Any)
        }
    }
}
