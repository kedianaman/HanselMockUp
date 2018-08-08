//
//  Place.swift
//  HanselMockUp
//
//  Created by Naman Kedia on 8/7/18.
//  Copyright © 2018 Naman Kedia. All rights reserved.
//

import Foundation
import UIKit

class Place {
    let cityName: String!
    var spotsRemaining: Int!
    let backgroundImage: UIImage!
    
    init(cityName: String, spotsRemaining: Int, backgroundImage: UIImage) {
        self.cityName = cityName
        self.spotsRemaining = spotsRemaining
        self.backgroundImage = backgroundImage
    }
}
