//
//  ViewController.swift
//  HanselMockUp
//
//  Created by Naman Kedia on 8/6/18.
//  Copyright © 2018 Naman Kedia. All rights reserved.
//

import UIKit

class MainScreenViewController: UIViewController, TabButtonViewDelgate {
    
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var tabButtonStackView: UIStackView!
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var userName: UILabel!
    
    let containerViewControllerIDs = ["PlacesVCID", "FavoritesVCID", "FriendsVCID"]
    let tabButtonTitles = ["Places", "Favorites", "Friends"]
    var tabButtonViews = [TabButtonView]()
    var containerViews = [UIView]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        insertChildViewControllers()
        insertTabBarButtonViews()
        profileImageView.image = #imageLiteral(resourceName: "Profile Img_11")
        userName.text = "Phil Willis"
    }
    
    func insertTabBarButtonViews() {
        for title in tabButtonTitles {
            let tabButtonView = TabButtonView()
            tabButtonView.tabButton.setTitle(title, for: .normal)
            tabButtonView.set(selected: false)
            tabButtonView.delegate = self
            tabButtonViews.append(tabButtonView)
            tabButtonStackView.addArrangedSubview(tabButtonView)
        }
        
        // set first tab view to be selected
        var index = 0
        for tabView in self.tabButtonViews {
            if (index == 0) {
                tabView.set(selected: true)
                self.containerViews[index].alpha = 1
            } else {
                self.tabButtonViews[index].set(selected: false)
                self.containerViews[index].alpha = 0
            }
            index = index + 1
        }
        
    }
    
    func insertChildViewControllers() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        for viewControllerID in containerViewControllerIDs {
            let viewController = storyboard.instantiateViewController(withIdentifier: viewControllerID)
            self.addChildViewController(viewController)
            containerView.addSubview(viewController.view)
            containerViews.append(viewController.view)
            viewController.didMove(toParentViewController: self)
        }
    }
    
    // tab button view delegate
    func tabButtonDidPress(view: TabButtonView) {
        var index = 0        
        UIView.animate(withDuration: 0.4, delay: 0.0, options: .beginFromCurrentState, animations: {
            for tabView in self.tabButtonViews {
                if (view == tabView) {
                    tabView.set(selected: true)
                    self.containerViews[index].alpha = 1
                } else {
                    tabView.set(selected: false)
                    self.containerViews[index].alpha = 0
                }
                index = index + 1
            }
        }, completion: nil)
    }
    
    
    
}

