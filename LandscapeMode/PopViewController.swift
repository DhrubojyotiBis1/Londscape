//
//  PopViewController.swift
//  LandscapeMode
//
//  Created by Dhrubojyoti on 25/03/20.
//  Copyright © 2020 Dhrubojyoti. All rights reserved.
//

import UIKit

protocol PopViewControllerProtocol {
    func actionButtonPressed(withTag tag :Int?)
}

class PopViewController: UIViewController {
    
    @IBOutlet weak var potraitView:UIView!
    @IBOutlet weak var landScapeView:UIView!
    
    @IBOutlet weak var potraitImageView:UIImageView!
    @IBOutlet weak var landscapeImageView:UIImageView!
    
    @IBOutlet weak var popView:UIView!
    
    var selectedCatagoryTag:Int!
    var delegate:PopViewControllerProtocol?
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.setup()
    }
    
    @IBAction func BttonPressed(_ sender:UIButton){
        self.dismiss(animated: true) {
            self.delegate?.actionButtonPressed(withTag: self.selectedCatagoryTag)
        }
    }

}

extension PopViewController{
    //all private function
    private func setup(){
        let potraitTapGesture = UITapGestureRecognizer(target: self, action: #selector(potraitTapped))
        self.potraitView.addGestureRecognizer(potraitTapGesture)
        
        let LandscapeTapGesture = UITapGestureRecognizer(target: self, action: #selector(LandscapeTapped))
        self.landScapeView.addGestureRecognizer(LandscapeTapGesture)
        
        self.popView.layer.cornerRadius = 10
    }
    
    @objc private func potraitTapped(){
        self.potraitImageView.image = UIImage(systemName: "checkmark.circle")
        self.landscapeImageView.image = UIImage(systemName: "circle")
        self.selectedCatagoryTag = 0
    }
    
    @objc private func LandscapeTapped(){
        self.potraitImageView.image = UIImage(systemName: "circle")
        self.landscapeImageView.image =  UIImage(systemName: "checkmark.circle")
        selectedCatagoryTag = 1
    }
}
