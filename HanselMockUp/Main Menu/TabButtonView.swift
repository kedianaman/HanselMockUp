//
//  TabButtonView.swift
//  HanselMockUp
//
//  Created by Naman Kedia on 8/7/18.
//  Copyright © 2018 Naman Kedia. All rights reserved.
//

import UIKit

protocol TabButtonViewDelgate: class {
    func tabButtonDidPress(view: TabButtonView)
}

class TabButtonView: UIView {
    
    weak var delegate: TabButtonViewDelgate?
    
    @IBOutlet var contentView: UIView!
    @IBOutlet weak var selectionIndicationView: UIView!
    @IBOutlet weak var tabButton: UIButton!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUp()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setUp()
    }
    
    func setUp() {
        Bundle.main.loadNibNamed("TabButtonView", owner: self, options: nil)
        addSubview(contentView)
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        selectionIndicationView.layer.cornerRadius = selectionIndicationView.bounds.width/2
    }
    
    func set(selected: Bool) {
        if (selected) {
            self.tabButton.setTitleColor(UIColor.hanselNavy(), for: .normal)
            self.selectionIndicationView.backgroundColor = UIColor.hanselAqua()
        } else {
            self.tabButton.setTitleColor(UIColor.hanselDarkGrey(), for: .normal)
            self.selectionIndicationView.backgroundColor = UIColor.hanselLightGrey()
        }
    }
    
    @IBAction func tabButtonPressed(_ sender: Any) {
        delegate?.tabButtonDidPress(view: self)
    }
    

}
