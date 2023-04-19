//
//  SignInVC.swift
//  Store test app
//
//  Created by Eugene on 13.03.23.
//

import UIKit
import EasyPeasy


class SignInVC: BasicVC {
        
    let signInLabel = UILabel(text: "Sign in", color: .black, fontSize: 30, fontName: "Avenir Next Demi Bold")
    let haveAccountLabel = UILabel(text: "Already have an account?", alignment: .natural, color: .gray, fontSize: 11, fontName: "Avenir Roman")
    let logInLabel = UILabel(text: "Log in", alignment: .natural, color: .systemBlue, fontSize: 11, fontName: "Avenir Roman")
    let signInGoogle = UILabel(text: "Sign in with Google", color: .black, fontSize: 14, fontName: "Avenir Medium")
    let signInApple = UILabel(text: "Sign in with Apple", color: .black, fontSize: 14, fontName: "Avenir Medium")
    
    let firstNameTF = UITextField(defaultText: "", keyboard: .asciiCapable, placeholder: "First name")
    let lastNameTF = UITextField(defaultText: "", keyboard: .asciiCapable, placeholder: "Last name")
    let emailTF = UITextField(defaultText: "", keyboard: .emailAddress, placeholder: "Email")
    
    let signInButton = UIButton(name: "Sign in", background: UIColor(named: "SignInColor") ?? .clear, textColor: .white)
    
    let appleImageView = UIImageView(image: UIImage(named: "appleLogo"))
    let googleImageView = UIImageView(image: UIImage(named: "googleLogo"))
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.signInButton.addTarget(self, action: #selector(self.signInAction), for: .touchUpInside)
        
        self.navigationItem.hidesBackButton = true
                
        self.signInSubviews()
        self.signInTFStack()
        self.haveAccountStack()
        self.signInWithStack()
        self.logInGestureRecognizer()
    }

}

