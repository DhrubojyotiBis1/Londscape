//
//  ViewController.swift
//  LandscapeMode
//
//  Created by Dhrubojyoti on 25/03/20.
//  Copyright © 2020 Dhrubojyoti. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var selectedCatagoryTag:Int?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func createNewProjectButtonPressed(_ sender:UIButton){
        performSegue(withIdentifier: "goToPopUpVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToPopUpVC"{
            let destination = segue.destination as! PopViewController
            destination.delegate = self
        }else if segue.identifier == "goToFinalView"{
            let destination = segue.destination as! FinalViewController
            destination.selectedCatagoryTag = self.selectedCatagoryTag!
        }
    }

}

extension ViewController:PopViewControllerProtocol{
    func actionButtonPressed(withTag tag: Int?) {
        self.selectedCatagoryTag = tag
        if tag != nil{
            performSegue(withIdentifier: "goToFinalView", sender: nil)
        }
    }
}

