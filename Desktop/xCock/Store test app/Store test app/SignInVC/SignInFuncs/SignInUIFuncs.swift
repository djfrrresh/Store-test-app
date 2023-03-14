//
//  SignInUIFuncs.swift
//  Store test app
//
//  Created by Eugene on 13.03.23.
//

import UIKit
import EasyPeasy


extension SignInVC {
    
    func signInStack() {
        let signInStack = UIStackView()
        
        self.setStack(stack: signInStack, axis: .vertical, spacing: 35, alignment: .center, distribution: .fill, viewsArray: [self.firstNameTF, self.lastNameTF, self.emailTF, self.signInButton])
        
        view.addSubview(signInStack)
        signInStack.easy.layout([CenterX(), CenterY(), Left(42), Right(42)])
        
        self.firstNameTF.easy.layout([Left(16), Right(16)])
        self.lastNameTF.easy.layout([Left(16), Right(16)])
        self.emailTF.easy.layout([Left(16), Right(16)])
        self.signInButton.easy.layout([Left(16), Right(16)])
    }

    func logInStack() {
        let haveAccountStack = UIStackView()
        
        self.setStack(stack: haveAccountStack, axis: .horizontal, spacing: 10, alignment: .fill, distribution: .fill, viewsArray: [self.haveAccountLabel, self.logInLabel])
        
        view.addSubview(haveAccountStack)
        haveAccountStack.easy.layout([Top(20).to(self.signInButton, .bottom), Left(0).to(self.signInButton, .left)])
    }
    
    func signInWithStack() {
        let appleImageView = UIImageView(image: self.appleLogo!)
        let googleImageView = UIImageView(image: self.googleLogo!)
        
        let servicesStack = UIStackView()
        let appleStack = UIStackView()
        let googleStack = UIStackView()
                
        self.setStack(stack: googleStack, axis: .horizontal, spacing: 15, alignment: .center, distribution: .fill, viewsArray: [googleImageView, self.signInGoogle])
        googleImageView.easy.layout([Height(28), Width(28)])
        
        self.setStack(stack: appleStack, axis: .horizontal, spacing: 15, alignment: .fill, distribution: .fill, viewsArray: [appleImageView, self.signInApple])
        appleImageView.easy.layout([Height(28), Width(28)])
        
        self.setStack(stack: servicesStack, axis: .vertical, spacing: 50, alignment: .center, distribution: .fill, viewsArray: [googleStack, appleStack])
        view.addSubview(servicesStack)
        servicesStack.easy.layout([Top(80).to(self.haveAccountLabel, .bottom), Left(16), Right(16)])
    }
    
}
