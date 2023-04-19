//
//  SignInActions.swift
//  Store test app
//
//  Created by Eugene on 13.03.23.
//

import UIKit
import EasyPeasy


extension SignInVC {
    
    @objc func goToLoginVC() {
        let vc = LoginVC()
        
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func goToStoreVC() {
        self.view.window?.rootViewController = TabBarVC()
        self.view.window?.makeKeyAndVisible()
    }
    
    @objc func signInAction() {
        if self.checkSingInValues() {
            self.view.window?.rootViewController = TabBarVC()
            self.view.window?.makeKeyAndVisible()
        }
    }
    
}
