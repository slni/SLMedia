//
//  SLVideoPlayer.swift
//  rpc
//
//  Created by 一声雷 on 2018/3/5.
//  Copyright © 2018年 Che300. All rights reserved.
//

import UIKit
import AVKit
public class SLVideoPlayer: NSObject {
    // 全屏播放
    public static func presentVideoPlayerController(targetVC:UIViewController,videoURL:URL){
        let player = AVPlayer(url: videoURL)
        let playerViewController = AVPlayerViewController()
        playerViewController.player = player
        targetVC.present(playerViewController, animated: true) {
            playerViewController.player!.play()
        }
    }
}
