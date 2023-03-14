//
//  LoginVC.swift
//  Store test app
//
//  Created by Eugene on 13.03.23.
//

import UIKit
import EasyPeasy


class LoginVC: BasicVC {
    
    let welcomeLabel = UILabel(text: "Welcome back", alignment: .center, color: .black, fontSize: 30)
    
    let firstNameTF = UITextField(defaultText: "", keyboard: .default, placeholder: "First name")
    let passwordTF = UITextField(defaultText: "", keyboard: .default, placeholder: "Password")
    
    let loginButton = UIButton(name: "Login", background: .clear, textColor: .white)
    
    let buttonBlueColor = UIColor(named: "SignInColor")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.loginButton.backgroundColor = self.buttonBlueColor
        
        self.loginStack()
        
        view.addSubview(self.welcomeLabel)
        self.welcomeLabel.easy.layout([Bottom(110).to(self.firstNameTF, .bottom), Left(16), Right(16)])
    }
    
}
