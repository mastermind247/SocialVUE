//
//  CustomRoundedTextField.swift
//  SocialVUE
//
//  Created by Parth on 28/03/16.
//  Copyright © 2016 Parth Adroja. All rights reserved.
//

import UIKit

@IBDesignable
class CustomRoundedTextField: UITextField {

    @IBInspectable var lColor: UIColor = UIColor(red: (37.0/255.0), green: (252.0/255), blue: (244.0/255.0), alpha: 1.0)
    @IBInspectable var lWidth: CGFloat = 1
    @IBInspectable var lCornerRadius: CGFloat = 8
    @IBInspectable var sColor:UIColor = UIColor(red: (37.0/255.0), green: (252.0/255), blue: (244.0/255.0), alpha: 1.0)
    @IBInspectable var TLRCorner:Bool = false
    @IBInspectable var TRRCorner:Bool = false
    @IBInspectable var BLRCorner:Bool = false
    @IBInspectable var BRRCorner:Bool = false
    
    
    required internal init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    override internal func drawRect(rect: CGRect) {
        addBorderFieldRect()
    }
    
    func addBorderFieldRect() {
        let rectanglePath = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: [
            TLRCorner ? .TopLeft : [],
            TRRCorner ? .TopRight : [],
            BLRCorner ? .BottomLeft : [],
            BRRCorner ? .BottomRight : []
            ], cornerRadii: CGSizeMake(lCornerRadius, lCornerRadius))
        rectanglePath.closePath()
        self.lColor.setFill()
        rectanglePath.fill()
        self.sColor.setStroke()
        rectanglePath.lineWidth = lWidth
        rectanglePath.stroke()
    }

}
