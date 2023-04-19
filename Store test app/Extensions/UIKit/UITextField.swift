//
//  UITextField.swift
//  Store test app
//
//  Created by Eugene on 13.03.23.
//

import UIKit
import EasyPeasy


extension UITextField {
    
    convenience init(defaultText: String, keyboard: UIKeyboardType, placeholder: String) {
        self.init()
        
        self.layer.cornerRadius = 15
        
        self.autocorrectionType = .no
        
        self.backgroundColor = UIColor(red: 0.91, green: 0.91, blue: 0.91, alpha: 1)
        self.keyboardType = keyboard
        self.text = defaultText
                
        self.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 16, height: self.frame.height))
        self.leftViewMode = .always
                
        let placeholderLabel = UILabel(text: placeholder, color: .gray, fontSize: 14, fontName: "Avenir Medium")

        self.addSubview(placeholderLabel)
        placeholderLabel.easy.layout([CenterY(), CenterX(), Left(0), Right(0)])
        
        self.easy.layout([Height(29)])
    }
    
    func setPlaceholder() {
//        placeholderLabel.isHidden = (self.text == nil)
    }
    
}
