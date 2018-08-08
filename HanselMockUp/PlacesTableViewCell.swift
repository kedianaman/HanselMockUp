//
//  PlacesTableViewCell.swift
//  HanselMockUp
//
//  Created by Naman Kedia on 8/7/18.
//  Copyright © 2018 Naman Kedia. All rights reserved.
//

import UIKit

class PlacesTableViewCell: UITableViewCell {

    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var spotsRemainingLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUp()
    }
    
    func setUp() {
        spotsRemainingLabel.layer.cornerRadius = 2
        spotsRemainingLabel.clipsToBounds = true
    }
    
}
