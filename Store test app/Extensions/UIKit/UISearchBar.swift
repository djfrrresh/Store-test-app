//
//  UISearchBar.swift
//  Store test app
//
//  Created by Eugene on 22.03.23.
//

import UIKit


extension UISearchBar {

    func getTextField() -> UITextField? {
        return value(forKey: "searchField") as? UITextField
    }
    
    func set(textColor: UIColor) {
        if let textField = getTextField() {
            textField.textColor = textColor
        }
    }
    
    func setPlaceholder(textColor: UIColor) {
        getTextField()?.textColor = textColor
    }

    func setTextField(color: UIColor) {
        guard let textField = getTextField() else { return }
        switch searchBarStyle {
        case .minimal:
            textField.layer.backgroundColor = color.cgColor
            textField.layer.cornerRadius = 6
        case .prominent, .default: textField.backgroundColor = color
        @unknown default: break
        }
    }

    func setSearchImage(color: UIColor) {
        guard let imageView = getTextField()?.leftView as? UIImageView else { return }
        imageView.tintColor = color
        imageView.image = imageView.image?.withRenderingMode(.alwaysTemplate)
    }
}
