//
//  LoginVC.swift
//  Store test app
//
//  Created by Eugene on 13.03.23.
//

import UIKit
import EasyPeasy


class LoginVC: BasicVC {
    
    let welcomeLabel = UILabel(text: "Welcome back", alignment: .center, color: .black, fontSize: 30, fontName: "Avenir Next Demi Bold")
    
    let firstNameTF = UITextField(defaultText: "", keyboard: .asciiCapable, placeholder: "First name")
    let passwordTF = UITextField(defaultText: "", keyboard: .asciiCapable, placeholder: "Password")
    
    let loginButton = UIButton(name: "Login", background: UIColor(named: "SignInColor") ?? .clear, textColor: .white)
    
    let openEyeIcon = UIImage(systemName: "eye.fill")
    let closeEyeIcon = UIImage(systemName: "eye.slash.fill")
        
    let eyeButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        self.eyeButton.addTarget(self, action: #selector(self.hidePassword), for: .touchUpInside)
        self.loginButton.addTarget(self, action: #selector(self.goToStoreVC), for: .touchUpInside)
                
        self.passwordTF.isSecureTextEntry = true
        self.passwordTF.delegate = self
        
        self.loginSubviews()
        self.loginTFStack()
    }
    
//    override func viewDidDisappear(_ animated: Bool) {
//        super.viewWillDisappear(animated)
//        navigationController?.viewControllers.removeAll(where: { self === $0 })
//    }
    
}
