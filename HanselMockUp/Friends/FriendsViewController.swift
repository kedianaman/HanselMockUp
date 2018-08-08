//
//  FriendsViewController.swift
//  HanselMockUp
//
//  Created by Naman Kedia on 8/7/18.
//  Copyright © 2018 Naman Kedia. All rights reserved.
//

import UIKit

class FriendsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var friendsTableView: UITableView!
    
    var friends = [Friend]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        friends.append(Friend(profileImage: #imageLiteral(resourceName: "Profile Img_10"), firstName: "Landon", lastName: "Clark", following: false, accountName: "@landon"))
        friends.append(Friend(profileImage: #imageLiteral(resourceName: "Profile Img_9"), firstName: "Felix", lastName: "Hamilton", following: true, accountName: "@felix"))
        friends.append(Friend(profileImage: #imageLiteral(resourceName: "Profile Img_8"), firstName: "Josh", lastName: "Ranger", following: true, accountName: "@josh_24"))
        friends.append(Friend(profileImage: #imageLiteral(resourceName: "Profile Img_7"), firstName: "Niki", lastName: "McDuffie", following: true, accountName: "@Duffie"))
        friends.append(Friend(profileImage: #imageLiteral(resourceName: "Profile Img_6"), firstName: "Elisa", lastName: "Finch", following: true, accountName: "@efinch"))
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friends.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = friendsTableView.dequeueReusableCell(withIdentifier: "FriendsTableViewCellID", for: indexPath) as? FriendTableViewCell {
            let friend = friends[indexPath.row]
            cell.profileImageView.image = friend.profileImage
            cell.nameLabel.text = "\(friend.firstName) \(friend.lastName)"
            cell.accountLabel.text = friend.accountName
            cell.followButton.tag = indexPath.row
            cell.followButton.toggle(toFollowing: friend.following)
            return cell
        }
        return UITableViewCell()
    }

    @IBAction func followButtonClicked(_ sender: HanselFollowButton) {
        let friend = friends[sender.tag]
        friend.following = !friend.following
        sender.toggle(toFollowing: friend.following)
    }
    
    



}
