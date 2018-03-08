//
//  SLImageLoad.swift
//  rpc
//
//  Created by 一声雷 on 2018/3/2.
//  Copyright © 2018年 Che300. All rights reserved.
//

import UIKit
let SLMedia_identifier = "com.slni.SLMedia"
class SLImageLoad: NSObject {
    static func load(name:String) -> UIImage?{
      let bundle = Bundle.init(identifier: SLMedia_identifier)
      //let bundle = Bundle.main
      return UIImage(named: name, in: bundle, compatibleWith: nil)
    }
}
