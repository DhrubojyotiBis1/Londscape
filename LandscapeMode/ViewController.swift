//
//  ViewController.swift
//  LandscapeMode
//
//  Created by Dhrubojyoti on 25/03/20.
//  Copyright © 2020 Dhrubojyoti. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func createNewProjectButtonPressed(_ sender:UIButton){
        performSegue(withIdentifier: "goToPopUpVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToPopUpVC"{
            
        }
    }

}

