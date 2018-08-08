//
//  HanselFollowButton.swift
//  HanselMockUp
//
//  Created by Naman Kedia on 8/7/18.
//  Copyright © 2018 Naman Kedia. All rights reserved.
//

import UIKit

class HanselFollowButton: HanselButton {
    
    let followColor = UIColor.hanselGreyTextColor()
    let unfollowColor = UIColor.hanselAqua()

    
    func toggle(toFollowing: Bool) {
        if (toFollowing) {
            self.setTitle("Unfollow", for: .normal)
            self.setTitleColor(followColor, for: .normal)
            animateBorderWidth(view: self, from: 1, to: 0, duration: 0.5)
        } else {
            self.setTitle("Follow", for: .normal)
            self.setTitleColor(unfollowColor, for: .normal)
            animateBorderWidth(view: self, from: 0, to: 1, duration: 0.5)
        }
    }
    
    func animateBorderWidth(view: UIView, from: CGFloat, to: CGFloat, duration: Double) {
        let animation:CABasicAnimation = CABasicAnimation(keyPath: "borderWidth")
        animation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        animation.fromValue = from
        animation.toValue = to
        animation.duration = duration
        view.layer.add(animation, forKey: "Width")
        view.layer.borderWidth = to
    }

    

}
