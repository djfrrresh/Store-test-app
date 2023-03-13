//
//  UILabel.swift
//  Store test app
//
//  Created by Eugene on 13.03.23.
//

import UIKit


extension UILabel {
    
    convenience init(text: String, alignment: NSTextAlignment, color: UIColor, fontSize: Int) {
        self.init()
        self.text = text
        self.textColor = color
        self.textAlignment = alignment
        self.numberOfLines = 0
        self.font = .systemFont(ofSize: CGFloat(fontSize))
        self.adjustsFontSizeToFitWidth = true
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
}
