//
//  RoundedUIButton.swift
//  ZipkickNew
//
//  Created by Duong Viet Cuong on 2/19/16.
//  Copyright © 2016 Lexnology. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable
class RoundedUIButton: UIButton {
    
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
            layer.masksToBounds = cornerRadius > 0
        }
    }
    
}
