//
//  PlacesViewController.swift
//  HanselMockUp
//
//  Created by Naman Kedia on 8/7/18.
//  Copyright © 2018 Naman Kedia. All rights reserved.
//

import UIKit

class PlacesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var placesTableView: UITableView!
    @IBOutlet weak var addPlaceButton: UIButton!
    
    var places = [Place]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        places.append(Place(cityName: "Paris", spotsRemaining: 3, backgroundImage: #imageLiteral(resourceName: "Paris")))
        places.append(Place(cityName: "Los Angeles", spotsRemaining: 5, backgroundImage: #imageLiteral(resourceName: "Los Angeles")))
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return places.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = placesTableView.dequeueReusableCell(withIdentifier: "PlacesTableViewCellID", for: indexPath) as? PlacesTableViewCell {
            let place = places[indexPath.row]
            cell.backgroundImageView.image = place.backgroundImage
            cell.spotsRemainingLabel.text = "\(place.spotsRemaining) spots"
            return cell
        }
        return UITableViewCell()
    }

}
