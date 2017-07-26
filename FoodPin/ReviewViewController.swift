//
//  ReviewViewController.swift
//  FoodPin
//
//  Created by MTMAC23 on 7/26/17.
//  Copyright © 2017 MTMAC23. All rights reserved.
//

import UIKit

class ReviewViewController: UIViewController {
    
    @IBOutlet var backgroundImageView: UIImageView!
    @IBOutlet var containerView: UIView!
    @IBOutlet var restaurantImageView: UIImageView!
    
    var restaurant:Restaurant!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.dark)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        
        blurEffectView.frame = view.bounds
        backgroundImageView.addSubview(blurEffectView)
        
        containerView.transform = CGAffineTransform.init(scaleX: 0, y: 0)
        
        restaurantImageView.image = UIImage(named: restaurant.image)
        
//        let scaleTransform = CGAffineTransform.init(scaleX: 0, y: 0)
//        let translateTransform = CGAffineTransform.init(translationX: 0, y: -1000)
//        let combineTransform = scaleTransform.concatenating(translateTransform)
//        containerView.transform = combineTransform
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
//        UIView.animate(withDuration: 0.3, animations: {
//            self.containerView.transform = CGAffineTransform.identity
//        })
        
        UIView.animate(withDuration: 0.4, delay: 0.0, usingSpringWithDamping: 0.3, initialSpringVelocity: 0.2, options: .curveEaseInOut, animations: {
            self.containerView.transform = CGAffineTransform.identity
        }, completion: nil)
        
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
