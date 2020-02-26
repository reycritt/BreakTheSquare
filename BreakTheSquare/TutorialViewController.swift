//
//  TutorialViewController.swift
//  BreakTheSquare
//
//  Created by Socstudent on 2/26/20.
//  Copyright © 2020 royalty. All rights reserved.
//

import UIKit

class TutorialViewController: UIViewController {
    
    @IBOutlet weak var toMenusButton: UIBarButtonItem!//Returns to menus
    @IBOutlet weak var continueTutorialButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func returnToMenus(_ sender: Any) {
        //performSegue(withIdentifier: "toMenu", sender: self)
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func continueWithTutorial(_ sender: Any) {
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
