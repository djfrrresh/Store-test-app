//
//  LoginUXFuncs.swift
//  Store test app
//
//  Created by Eugene on 14.03.23.
//

import UIKit
import EasyPeasy


extension LoginVC {
    
    func checkLoginValues() -> Bool {
        if (!(self.firstNameTF.text?.isEmpty ?? false) &&
            !(self.passwordTF.text?.isEmpty ?? false)) {
            
            if (self.firstNameTF.text?.count ?? 0 < 2 && self.passwordTF.text?.count ?? 0 < 2) {
                self.alert(message: "The minimum string length must be at least 3!")
                return false
            }
        } else {
            self.alert(message: "Enter all values for login!")
            return false
        }
        return true
    }
    
}
