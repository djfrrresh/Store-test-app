//
//  LoginUIFuncs.swift
//  Store test app
//
//  Created by Eugene on 13.03.23.
//

import UIKit
import EasyPeasy


extension LoginVC {
    
    func loginStack() {
        let loginStack = UIStackView()
        
        self.setStack(stack: loginStack, axis: .vertical, spacing: 35, alignment: .center, distribution: .fill, viewsArray: [self.firstNameTF, self.passwordTF, self.loginButton])
        
        view.addSubview(loginStack)
        loginStack.easy.layout([CenterX(), CenterY(), Left(42), Right(42)])
        
        self.firstNameTF.easy.layout([Left(16), Right(16)])
        self.passwordTF.easy.layout([Left(16), Right(16)])
        self.loginButton.easy.layout([Left(16), Right(16)])
    }
    
}
