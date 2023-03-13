//
//  SignInVC.swift
//  Store test app
//
//  Created by Eugene on 13.03.23.
//

import UIKit
import EasyPeasy


class SignInVC: BasicVC {
        
    let signInLabel = UILabel(text: "Sign in", alignment: .center, color: .black, fontSize: 30)
    let haveAccountLabel = UILabel(text: "Already have an account?", alignment: .natural, color: .gray, fontSize: 13)
    let logInLabel = UILabel(text: "Log in", alignment: .natural, color: .systemBlue, fontSize: 13)
    let signInGoogle = UILabel(text: "Sign in with Google", alignment: .center, color: .black, fontSize: 14)
    let signInApple = UILabel(text: "Sign in with Apple", alignment: .center, color: .black, fontSize: 14)
    
    let firstNameTF = UITextField(defaultText: "", keyboard: .default, placeholder: "First name")
    let lastNameTF = UITextField(defaultText: "", keyboard: .default, placeholder: "Last name")
    let emailTF = UITextField(defaultText: "", keyboard: .emailAddress, placeholder: "Email")
    
    let signInButton = UIButton(name: "Sign in", background: .clear, textColor: .white)
    
    let buttonBlueColor = UIColor(named: "SignInColor")
    
    let appleLogo = UIImage(named: "appleLogo")
    let googleLogo = UIImage(named: "googleLogo")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.signInButton.backgroundColor = self.buttonBlueColor
        
        self.signInStack()
        self.logInStack()
        self.signInWithStack()
        self.viewGestureRecognizer()
        
        view.addSubview(self.signInLabel)
        self.signInLabel.easy.layout([Bottom(110).to(self.firstNameTF, .bottom), Left(16), Right(16)])
    }

}

