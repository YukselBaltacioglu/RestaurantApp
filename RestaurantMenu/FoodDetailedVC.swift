//
//  FoodDetailedVC.swift
//  RestaurantMenu
//
//  Created by Yüksel Baltacıoğlu on 5.11.2023.
//

import UIKit

class FoodDetailedVC: UIViewController {

    var selectedMenuItem: Food?
    
    @IBOutlet var foodName: UILabel!
    
    @IBOutlet var foodDescription: UILabel!
    @IBOutlet var foodPrice: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let menuItem = selectedMenuItem {
            
            foodName.text = menuItem.title
            foodDescription.text = menuItem.description
            foodPrice.text = menuItem.price
            
            }
    }
    

}
