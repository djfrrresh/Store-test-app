//
//  SignInUIFuncs.swift
//  Store test app
//
//  Created by Eugene on 13.03.23.
//

import UIKit
import EasyPeasy


extension SignInVC {
    
    func signInTFStack() {
        let signInTFStack = UIStackView()
        
        self.setStack(stack: signInTFStack, axis: .vertical, spacing: 35, alignment: .fill, distribution: .fill, viewsArray: [self.firstNameTF, self.lastNameTF, self.emailTF, self.signInButton])
        
        self.view.addSubview(signInTFStack)
        signInTFStack.easy.layout([CenterX(), Top(80).to(self.signInLabel, .bottom), Left(42), Right(42)])
    }

    func haveAccountStack() {
        let haveAccountStack = UIStackView()
        
        self.setStack(stack: haveAccountStack, axis: .horizontal, spacing: 10, alignment: .fill, distribution: .fill, viewsArray: [self.haveAccountLabel, self.logInLabel])
        
        self.view.addSubview(haveAccountStack)
        haveAccountStack.easy.layout([Top(20).to(self.signInButton, .bottom), Left(0).to(self.signInButton, .left)])
    }
    
    func signInWithStack() {
        let servicesStack = UIStackView()
        let appleStack = UIStackView()
        let googleStack = UIStackView()
                
        self.setStack(stack: googleStack, axis: .horizontal, spacing: 15, alignment: .fill, distribution: .fill, viewsArray: [self.googleImageView, self.signInGoogle])
        self.googleImageView.easy.layout([Height(28), Width(28)])
        
        self.setStack(stack: appleStack, axis: .horizontal, spacing: 15, alignment: .fill, distribution: .fill, viewsArray: [self.appleImageView, self.signInApple])
        self.appleImageView.easy.layout([Height(28), Width(28)])
        
        self.setStack(stack: servicesStack, axis: .vertical, spacing: 40, alignment: .center, distribution: .fill, viewsArray: [googleStack, appleStack])
        
        view.addSubview(servicesStack)
        servicesStack.easy.layout([Bottom(80).to(self.view.safeAreaLayoutGuide, .bottom), Left(0), Right(0)])
    }
    
    func signInSubviews() {
        self.view.addSubview(self.signInLabel)
        self.signInLabel.easy.layout([Top(20).to(self.view.safeAreaLayoutGuide, .top), Left(0), Right(0)])
    }
    
}
