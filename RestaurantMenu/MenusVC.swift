//
//  MenusVC.swift
//  RestaurantMenu
//
//  Created by Yüksel Baltacıoğlu on 4.11.2023.
//

import UIKit

class MenusVC: UIViewController {

    var foods: [Food] = []
    var selectedButton = 0
    
    @IBOutlet var dessertButton: UIButton!
    @IBOutlet var childButton: UIButton!
    @IBOutlet var mainButton: UIButton!
    @IBOutlet var appButton: UIButton!

    @IBOutlet var sideButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func appTapped(_ sender: UIButton) {
        selectedButton = 1
        performSegue(withIdentifier: "goMenuTypeSegue", sender: nil)
    }
    @IBAction func mainTapped(_ sender: UIButton) {
        selectedButton = 3
        performSegue(withIdentifier: "goMenuTypeSegue", sender: nil)
    }
    @IBAction func childTapped(_ sender: UIButton) {
        selectedButton = 4
        performSegue(withIdentifier: "goMenuTypeSegue", sender: nil)
    }
    @IBAction func dessertTapped(_ sender: UIButton) {
        selectedButton = 5
        performSegue(withIdentifier: "goMenuTypeSegue", sender: nil)
    }
    @IBAction func sideTapped(_ sender: UIButton) {
        selectedButton = 2
        performSegue(withIdentifier: "goMenuTypeSegue", sender: nil)
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("AAAA")
        if segue.identifier == "goMenuTypeSegue" {
                if let destinationVC = segue.destination as? MenuTypeVC {
                    destinationVC.selectedButton = selectedButton
                }
            }
    }
    
    
    
}

