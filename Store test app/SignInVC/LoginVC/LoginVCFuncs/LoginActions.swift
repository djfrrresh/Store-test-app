//
//  LoginActions.swift
//  Store test app
//
//  Created by Eugene on 14.03.23.
//

import UIKit
import EasyPeasy


extension LoginVC {
    
    @objc func hidePassword(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        self.passwordTF.isSecureTextEntry = !sender.isSelected
        
//        if let textRange = self.passwordTF.textRange(from: self.passwordTF.beginningOfDocument, to: self.passwordTF.endOfDocument) {
//            self.passwordTF.replace(textRange, withText: self.passwordTF.text!)
//        }
//        if let existingSelectedTextRange = self.passwordTF.selectedTextRange {
//            self.passwordTF.selectedTextRange = nil
//            self.passwordTF.selectedTextRange = existingSelectedTextRange
//        }
    }
    
    @objc func goToStoreVC() {
        if checkLoginValues() {
            self.view.window?.rootViewController = TabBarVC()
            self.view.window?.makeKeyAndVisible()
        }
    }
    
}
