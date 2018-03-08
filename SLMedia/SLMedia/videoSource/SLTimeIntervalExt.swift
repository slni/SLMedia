//
//  SLTimeIntervalExt.swift
//  rpc
//
//  Created by 一声雷 on 2018/3/2.
//  Copyright © 2018年 Che300. All rights reserved.
//

import UIKit

extension TimeInterval {
    
    /// 获取(天 时 分 秒)
    func sl_toDHMS() -> (day:Int, hour:Int, minute:Int, second:Int){
        let oneDay = Int(60 * 60 * 24)
        let oneHour = Int(60 * 60)
        let oneMinute = Int(60)
        if self >= 0{
            var remainTime = Int(self)
            let day = remainTime / oneDay
            remainTime = remainTime - (day * oneDay)
            let hour = remainTime / oneHour
            remainTime = remainTime - (hour * oneHour)
            let minute = remainTime / oneMinute
            remainTime = remainTime - (minute * oneMinute)
            let second = remainTime
            return (day, hour, minute, second)
        }else{
            return (0, 0, 0, 0)
        }
    }
    
    /// 获取(时 分 秒)
    func sl_toHMS() -> (hour:Int, minute:Int, second:Int){
        let oneHour = Int(60 * 60)
        let oneMinute = Int(60)
        if self >= 0{
            var remainTime = Int(self)
            let hour = remainTime / oneHour
            remainTime = remainTime - (hour * oneHour)
            let minute = remainTime / oneMinute
            remainTime = remainTime - (minute * oneMinute)
            let second = remainTime
            return (hour, minute, second)
        }else{
            return (0, 0, 0)
        }
    }
    
    func sl_formatPlayTime() -> String{
        let t = self.sl_toHMS()
        return String(format:"%02d:%02d:%02d",t.hour, t.minute, t.second)
    }

}

