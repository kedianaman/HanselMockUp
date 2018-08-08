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
            self.layer.borderWidth = 0
        } else {
            self.setTitle("Follow", for: .normal)
            self.setTitleColor(unfollowColor, for: .normal)
            self.layer.borderWidth = 1
        }        
    }

    

}
