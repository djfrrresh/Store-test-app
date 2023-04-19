//
//  SignInUXFuncs.swift
//  Store test app
//
//  Created by Eugene on 13.03.23.
//

import UIKit
import EasyPeasy


extension SignInVC {
    
    func logInGestureRecognizer() {
        let logInTap = UITapGestureRecognizer(target: self, action: #selector(self.goToLoginVC))
        let googleTap = UITapGestureRecognizer(target: self, action: #selector(self.goToStoreVC))
        
        self.logInLabel.addGestureRecognizer(logInTap)
        self.signInGoogle.addGestureRecognizer(googleTap)
        
        self.logInLabel.isUserInteractionEnabled = true
        self.signInGoogle.isUserInteractionEnabled = true
    }
    
    func checkSingInValues() -> Bool {
        if (!(self.firstNameTF.text?.isEmpty ?? false) &&
            !(self.lastNameTF.text?.isEmpty ?? false) &&
            !(self.emailTF.text?.isEmpty ?? false)) {
            
            if (self.firstNameTF.text?.count ?? 0 < 2 && self.lastNameTF.text?.count ?? 0 < 2) {
                self.alert(message: "The minimum string length must be at least 3!")
                return false
            }
            
            if (!(self.emailTF.text?.isValidEmail ?? false)) {
                self.alert(message: "Invalid email!")
                return false
            }
            
            let emails = User.shared.profileEmail
            for i in 0..<emails.count {
                if emails[i] == self.emailTF.text {
                    self.alert(message: "This user already exists!")
                    return false
                }
            }
            
        } else {
            self.alert(message: "Enter all values for registration!")
            return false
        }
        
        User.shared.regNewUser(firstName: self.firstNameTF.text ?? "Satria", lastName: self.lastNameTF.text ?? "Adhi Pradana", email: self.emailTF.text ?? "jack-hofman10@mail.ru")
        return true
    }
    
}
