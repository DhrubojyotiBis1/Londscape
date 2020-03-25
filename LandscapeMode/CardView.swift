//
//  FinalViewController.swift
//  LandscapeMode
//
//  Created by Dhrubojyoti on 25/03/20.
//  Copyright © 2020 Dhrubojyoti. All rights reserved.
//

import UIKit

@IBDesignable class cardView:UIView {
    
    @IBInspectable var cornerRadius: CGFloat {
         get {
           return self.layer.cornerRadius
         }set {
           self.layer.cornerRadius = newValue
         }
    }
    
    @IBInspectable public var shadowOffSet:CGSize {
        get {
          return self.layer.shadowOffset
        }set {
          self.layer.shadowOffset = newValue
        }
    }
    
    @IBInspectable public var shadowColour:UIColor {
        get{
            return UIColor(cgColor: self.layer.shadowColor!)
        }set{
            self.layer.shadowColor = newValue.cgColor
        }
    }
    
    @IBInspectable public var shadowRadius: CGFloat{
        get{
            return self.layer.shadowRadius
        }set{
            self.layer.shadowRadius = newValue
        }
    }
    
    @IBInspectable public var shadowOpacity: Float {
        get {
           return self.layer.shadowOpacity
        }
        set {
           self.layer.shadowOpacity = newValue
       }
    }
    
    @IBInspectable public var borderWidth: Double {
          get {
            return Double(self.layer.borderWidth)
          }
          set {
           self.layer.borderWidth = CGFloat(newValue)
          }
    }
    @IBInspectable public var borderColor: UIColor? {
         get {
            return UIColor(cgColor: self.layer.borderColor!)
         }
         set {
            self.layer.borderColor = newValue?.cgColor
         }
    }
}
