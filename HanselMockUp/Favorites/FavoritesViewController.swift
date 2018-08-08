//
//  FavoritesViewController.swift
//  HanselMockUp
//
//  Created by Naman Kedia on 8/8/18.
//  Copyright © 2018 Naman Kedia. All rights reserved.
//

import UIKit

class FavoritesViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpNoFavoritesLabel()
    }
    
    // increases spaces between lines
    func setUpNoFavoritesLabel() {
        let text = "No favorites as yet. Let’s find you some places that you would like to visit."
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = 3
        let attrString = NSAttributedString(string: text, attributes: [.paragraphStyle : paragraphStyle])
        messageLabel.attributedText = attrString
        messageLabel.textAlignment = NSTextAlignment.center

        
    }


}
