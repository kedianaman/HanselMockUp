//
//  Friend.swift
//  HanselMockUp
//
//  Created by Naman Kedia on 8/7/18.
//  Copyright © 2018 Naman Kedia. All rights reserved.
//

import Foundation
import UIKit

class Friend {
    let profileImage: UIImage
    let firstName: String
    let lastName: String
    var following: Bool
    let accountName: String
    
    init(profileImage: UIImage, firstName: String, lastName: String, following: Bool, accountName: String) {
        self.profileImage = profileImage
        self.firstName = firstName
        self.lastName = lastName
        self.following = following
        self.accountName = accountName
    }
    
}
