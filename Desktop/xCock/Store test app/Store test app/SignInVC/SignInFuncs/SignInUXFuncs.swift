//
//  SignInUXFuncs.swift
//  Store test app
//
//  Created by Eugene on 13.03.23.
//

import UIKit
import EasyPeasy


extension SignInVC {
    
    func viewGestureRecognizer() {
        let logInTap = UITapGestureRecognizer(target: self, action: #selector(self.goToLoginVC))
        self.logInLabel.addGestureRecognizer(logInTap)
        self.logInLabel.isUserInteractionEnabled = true
    }
    
}
