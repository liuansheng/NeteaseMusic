//
//  LeeFoundBannerModel.swift
//  NeteaseMusic
//
//  Created by quansheng li on 2019/7/18.
//  Copyright © 2019 quansheng. All rights reserved.
//

import UIKit


class LeeFoundBannerModel: LeeBaseModel {
    var banners: [LeeFoundBannerBannersModel]?
    var code: Int = 0
}
class LeeFoundBannerBannersModel :LeeBaseModel {
    var scm: String?
    var adLocation: String?
    var url: String?
    var targetId: Int = 0
    var monitorClickList: [LeeFoundBannerMonitorClickListModel]?
    var alg: String?
    var monitorType: String?
    var adSource: String?
    var video: String?
    var typeTitle: String?
    var showAdTag: Bool = false
    var monitorBlackList: String?
    var extMonitorInfo: String?
    var event: String?
    var monitorImpress: String?
    var adShowContext: String?
    var pic: String?
    var song: LeeFoundBannerSongModel?
    var adurlV2: String?
    var titleColor: String?
    var encodeId: String?
    var program: String?
    var requestId: String?
    var targetType: Int = 0
    var pid: String?
    var bannerId: String?
    var monitorImpressList: [LeeFoundBannerMonitorImpressListModel]?
    var adid: String?
    var monitorClick: String?
    var exclusive: Bool = false
    var extMonitor: String?
    
}
class LeeFoundBannerMonitorImpressListModel :LeeBaseModel {
    
}
class LeeFoundBannerSongModel :LeeBaseModel {
    var ftype: Int = 0
    var id: Int = 0
    var rt: String?
    var publishTime: Int = 0
    var st: Int = 0
    var h: LeeFoundBannerHModel?
    var ar: [LeeFoundBannerArModel]?
    var alia: [LeeFoundBannerAliaModel]?
    var djId: Int = 0
    var copyright: Int = 0
    var cp: Int = 0
    var no: Int = 0
    var rtUrls: [LeeFoundBannerRtUrlsModel]?
    var privilege: LeeFoundBannerPrivilegeModel?
    var l: LeeFoundBannerLModel?
    var m: LeeFoundBannerMModel?
    var cd: String?
    var mark: Int = 0
    var rtype: Int = 0
    var name: String?
    var rurl: String?
    var mst: Int = 0
    var cf: String?
    var fee: Int = 0
    var crbt: String?
    var dt: Int = 0
    var rtUrl: String?
    var t: Int = 0
    var pst: Int = 0
    var mv: Int = 0
    var v: Int = 0
    var al: LeeFoundBannerAlModel?
    var s_id: Int = 0
    var pop: Int = 0
    var a: String?
    
}
class LeeFoundBannerAlModel :LeeBaseModel {
    var picUrl: String?
    var id: Int = 0
    var pic: Int = 0
    var name: String?
    var pic_str: String?
    var tns: [LeeFoundBannerTnsModel]?
    
}
class LeeFoundBannerTnsModel :LeeBaseModel {
    
}
class LeeFoundBannerMModel :LeeBaseModel {
    var size: Int = 0
    var br: Int = 0
    var fid: Int = 0
    var vd: Int = 0
    
}
class LeeFoundBannerLModel :LeeBaseModel {
    var size: Int = 0
    var br: Int = 0
    var fid: Int = 0
    var vd: Int = 0
    
}
class LeeFoundBannerPrivilegeModel :LeeBaseModel {
    var id: Int = 0
    var cs: Bool = false
    var toast: Bool = false
    var fl: Int = 0
    var st: Int = 0
    var sp: Int = 0
    var fee: Int = 0
    var dl: Int = 0
    var cp: Int = 0
    var subp: Int = 0
    var flag: Int = 0
    var payed: Int = 0
    var pl: Int = 0
    var maxbr: Int = 0
    var preSell: Bool = false
    
}
class LeeFoundBannerRtUrlsModel :LeeBaseModel {
    
}
class LeeFoundBannerAliaModel :LeeBaseModel {
    
}

class LeeFoundBannerArModel :LeeBaseModel {
    var id: Int = 0
    var alias: [Alias]?
    var name: String?
    var tns: [LeeFoundBannerTnsModel]?
    
}
class Alias :LeeBaseModel {
    
}
class LeeFoundBannerHModel :LeeBaseModel {
    var size: Int = 0
    var br: Int = 0
    var fid: Int = 0
    var vd: Int = 0
    
}
class LeeFoundBannerMonitorClickListModel :LeeBaseModel {
    
}
