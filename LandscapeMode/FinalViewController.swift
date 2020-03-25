//
//  FinalViewController.swift
//  LandscapeMode
//
//  Created by Dhrubojyoti on 25/03/20.
//  Copyright © 2020 Dhrubojyoti. All rights reserved.
//

import UIKit

class FinalViewController: UIViewController {
    
    @IBOutlet private weak var stackView:UIStackView!
    var selectedCatagoryTag = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.setup()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        (UIApplication.shared.delegate as! AppDelegate).restrictRotation = .portrait
    }
    
    
    override func willTransition(to newCollection: UITraitCollection, with coordinator: UIViewControllerTransitionCoordinator) {
        stackView.invalidateIntrinsicContentSize()
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if selectedCatagoryTag == 0{
            return UIInterfaceOrientationMask.portrait
        }else{
            return UIInterfaceOrientationMask.landscape
        }
    }
    
    @IBAction func backButtonPressed(_ sender:UIButton){
        (UIApplication.shared.delegate as! AppDelegate).restrictRotation = .all
        self.dismiss(animated: true, completion: nil)
    }

}

extension FinalViewController{
    //for all private functions
    
    private func setup(){
        (UIApplication.shared.delegate as! AppDelegate).restrictRotation = .all
    }
}
