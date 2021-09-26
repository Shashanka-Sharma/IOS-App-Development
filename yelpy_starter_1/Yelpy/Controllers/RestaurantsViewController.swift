//
//  ViewController.swift
//  Yelpy
//
//  Created by Memo on 5/21/20.
//  Copyright © 2020 memo. All rights reserved.
//

import UIKit
import AlamofireImage

class RestaurantsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    // ––––– TODO: Add storyboard Items (i.e. tableView + Cell + configurations for Cell + cell outlets)
    
    
    @IBOutlet weak var Table: UITableView!
    // ––––– TODO: Next, place TableView outlet here
    
    
    // –––––– TODO: Initialize restaurantsArray
    
    var restaurantsArray : [[String:Any?]] = []
    
    
    
    
    
    // ––––– TODO: Add tableView datasource + delegate
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.rowHeight = 150

    }
    
    
    // ––––– TODO: Get data from API helper and retrieve restaurants
    func getAPIData() {
        API.getRestaurants() { (restaurants) in
            guard let restaurants = restaurants else {
                return
            }
            print(restaurants)
            self.restaurantsArray = restaurants
        }
    }

}

// ––––– TODO: Create tableView Extension and TableView Functionality
func tableView(_ tableView: UITableView, numberOfRowsInSection section : Int) -> Int {
    
    let cell = tableView.dequeueReusableCell(withIdentifier: "RestaurantCell") as! RestaurantCell
    
    let restaurant = restaurantsArray[indexPath.row]
    
    cell.label.text = restaurant["name"] as? String ?? ""
    
    if let imageURLString = restaurant["image_url"] as? String {
        let imageURL = URL(string:imageURLString)
        cell.restaurantImage.af.setImage(withURL: imageURL!)
    }
    
    return cell
    
    
    
    
    
    return restaurantsArray.count
    }


