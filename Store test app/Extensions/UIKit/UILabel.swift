//
//  UILabel.swift
//  Store test app
//
//  Created by Eugene on 13.03.23.
//

import UIKit


extension UILabel {
    
    convenience init(text: String, alignment: NSTextAlignment = .center, color: UIColor, fontSize: CGFloat, fontName: String) {
        self.init()
        self.text = text
        self.font = UIFont(name: fontName, size: fontSize)
        self.textColor = color
        self.textAlignment = alignment
        self.numberOfLines = 0
        self.adjustsFontSizeToFitWidth = true
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
}
