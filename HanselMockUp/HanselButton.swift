//
//  HanselButton.swift
//  HanselMockUp
//
//  Created by Naman Kedia on 8/7/18.
//  Copyright © 2018 Naman Kedia. All rights reserved.
//

import UIKit

class HanselButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUp()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setUp()
    }
    
    func setUp() {
        self.layer.borderWidth = 1.0
        self.layer.borderColor = UIColor.hanselAqua().cgColor
        self.setTitleColor(UIColor.hanselAqua(), for: .normal)
        self.layer.cornerRadius = 2
    }
    
    
    

}
