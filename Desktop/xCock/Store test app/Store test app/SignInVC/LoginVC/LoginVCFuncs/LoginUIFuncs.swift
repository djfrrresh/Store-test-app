//
//  LoginUIFuncs.swift
//  Store test app
//
//  Created by Eugene on 13.03.23.
//

import UIKit
import EasyPeasy


extension LoginVC {
    
    func loginTFStack() {
        let loginTFStack = UIStackView()
        
        self.setStack(stack: loginTFStack, axis: .vertical, spacing: 35, alignment: .fill, distribution: .fill, viewsArray: [self.firstNameTF, self.passwordTF, self.loginButton])
        
        self.view.addSubview(loginTFStack)
        loginTFStack.easy.layout([CenterX(), Top(80).to(self.welcomeLabel, .bottom), Left(42), Right(42)])
    }
    
    func loginSubviews() {        
        self.eyeButton.setImage(closeEyeIcon, for: .normal)
        self.eyeButton.setImage(openEyeIcon, for: .selected)
        
        self.eyeButton.frame = CGRect(x: 0, y: 0, width: openEyeIcon!.size.width, height: openEyeIcon!.size.height)
        let rightView = UIView(frame: CGRect(x: 0, y: 0, width: openEyeIcon!.size.width + 15, height: openEyeIcon!.size.height))
        rightView.addSubview(self.eyeButton)

        self.eyeButton.tintColor = .gray
        self.passwordTF.rightView = rightView
        self.passwordTF.rightViewMode = .always

        self.view.addSubview(self.welcomeLabel)
        self.welcomeLabel.easy.layout([Top(80).to(self.view.safeAreaLayoutGuide, .top), Left(0), Right(0)])
    }
}
