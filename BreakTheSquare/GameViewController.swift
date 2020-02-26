//
//  GameViewController.swift
//  BreakTheSquare
//
//  Created by Socstudent on 2/26/20.
//  Copyright © 2020 royalty. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {
    
    @IBOutlet weak var squareHealthLabel: UILabel!
    //Might have a problem with setting the images of the square
    
    var squareMaxHealth = 100
    var squareCurrentHealth = 100
    var coins = 0//In-game currency
    var coinWorth = 5
    var coinReward = 20
    var playerDamage = 5
    var level = 0//Counter that changes difficulty and various game aspects
    //var coinMultiplier = ["first": 4, "second": 3]//This is an experimental dictionary of multiplier values

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func tapSquare(_ sender: Any) {
        coins += coinWorth
        print(coins)
        print(squareCurrentHealth)
        squareCurrentHealth -= playerDamage
        squareHealthLabel.text = "\(squareCurrentHealth)/\(squareMaxHealth)"
        
        squareHealthChecker(squareHealth: squareCurrentHealth)
    }
    
    /*
     Temporary button to return to main menu; will engage a popup/view that pauses the game and returns player to menu.
     */
    @IBAction func goToMenu(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    func squareHealthChecker (squareHealth: Int) {//Could be renamed to healthChecker and take in health of all enemies
        
        //Insert an if statement to change sqaure image based on remaining health
        if squareHealth <= 0 {
            coins += coinReward
            level += 1
            levelIncrease()
            //Call a function that does a short animation involving what's underneath the square
        }
    }
    
    func levelIncrease () {
        squareMaxHealth = Int(Double(squareMaxHealth) + (Double(squareMaxHealth) * 0.25))//0.25 is a temporary increase
        squareCurrentHealth = squareMaxHealth
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
