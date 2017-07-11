//
//  RestaurantDetailViewController.swift
//  FoodPin
//
//  Created by MTMAC23 on 7/11/17.
//  Copyright © 2017 MTMAC23. All rights reserved.
//

import UIKit

class RestaurantDetailViewController: UIViewController {

    @IBOutlet var restaurantImageView:UIImageView!
    @IBOutlet var restaurantNameView:UILabel!
    @IBOutlet var restaurantLocationView:UILabel!
    @IBOutlet var restaurantTypeView:UILabel!
    
//    var restaurantImage = ""
//    var restaurantName = ""
//    var restaurantLocation = ""
//    var restaurantType = ""
    var restaurant:Restaurant!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
//        restaurantImageView.image = UIImage(named: restaurantImage)
        restaurantImageView.image = UIImage(named: restaurant.image)
//        restaurantNameView.text = restaurantName
        restaurantNameView.text = restaurant.name
//        restaurantLocationView.text = restaurantLocation
        restaurantLocationView.text = restaurant.location
//        restaurantTypeView.text = restaurantType
        restaurantTypeView.text = restaurant.type
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
