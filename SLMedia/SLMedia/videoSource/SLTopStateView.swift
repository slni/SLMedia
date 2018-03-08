//
//  SLTopStateView.swift
//  rpc
//
//  Created by 一声雷 on 2018/3/2.
//  Copyright © 2018年 Che300. All rights reserved.
//

import UIKit

class SLTopStateView: UIView {

    @IBOutlet weak var fullOrShrinkBtn: UIButton!
    
    static func initWithXib() -> SLTopStateView{
        let view = Bundle.init(identifier: SLMedia_identifier)!.loadNibNamed("SLTopStateView", owner: nil, options: nil)?.last as! SLTopStateView
        return view
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.fullOrShrinkBtn.setImage(SLImageLoad.load(name: "sl-fullscreen"), for: .normal)
    }
}
