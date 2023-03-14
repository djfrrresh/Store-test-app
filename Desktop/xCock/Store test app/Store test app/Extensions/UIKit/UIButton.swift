//
//  UIButton.swift
//  Store test app
//
//  Created by Eugene on 13.03.23.
//

import UIKit
import EasyPeasy


extension UIButton {
    
    convenience init(name: String, background: UIColor, textColor: UIColor) {
        self.init()
        
        self.layer.cornerRadius = 15
        
        self.backgroundColor = background
        self.setTitleColor(textColor, for: .normal)
        
        self.setTitle(name, for: .normal)
        
        self.easy.layout([Height(46)])
    }
    
}
