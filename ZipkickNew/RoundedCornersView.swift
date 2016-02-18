//
//  RoundedCornersView.swift
//  ZipkickNew
//
//  Created by Duong Viet Cuong on 2/19/16.
//  Copyright © 2016 Lexnology. All rights reserved.
//

import UIKit

@IBDesignable
class RoundedCornersView: UIView {
    
    @IBInspectable var borderWidth:CGFloat=1{
        didSet{
            layer.borderWidth = borderWidth
            layer.borderColor = UIColor(red:222/255.0, green:225/255.0, blue:227/255.0, alpha: 1.0).CGColor
        }
    }
    
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
            layer.masksToBounds = cornerRadius > 0
        }
    }
    
}
