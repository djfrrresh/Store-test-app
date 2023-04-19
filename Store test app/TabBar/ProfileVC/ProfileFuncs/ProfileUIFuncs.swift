//
//  ProfileUIFuncs.swift
//  Store test app
//
//  Created by Eugene on 14.03.23.
//

import UIKit
import EasyPeasy


extension ProfileVC {
    
    func profileSubviews() {
        let profilePhotoStack = UIStackView()
        
        self.setStack(stack: profilePhotoStack, axis: .vertical, spacing: 10, alignment: .center, distribution: .fill, viewsArray: [self.profileImageView, self.changePhotoLabel])

        self.view.addSubview(self.profileTitle)
        self.view.addSubview(self.profileName)
        self.view.addSubview(self.uploadItemButton)
        self.view.addSubview(self.uploadImageView)
        self.view.addSubview(self.profileTV)

        self.profileTitle.easy.layout([Left(0), Right(0), Top(10).to(self.view.safeAreaLayoutGuide, .top)])
        
        self.view.addSubview(profilePhotoStack)
        profilePhotoStack.easy.layout([Top(10).to(self.profileTitle, .bottom), Left(16), Right(16)])
        self.profileImageView.easy.layout([Width(60), Height(60)])
        
        self.profileName.easy.layout([Left(16), Right(16), Top(20).to(self.changePhotoLabel, .bottom)])
        self.uploadItemButton.easy.layout([Left(42), Right(42), Top(40).to(self.profileName, .bottom)])
        self.uploadImageView.easy.layout([Left(50).to(self.uploadItemButton, .left), CenterY().to(self.uploadItemButton), Height(21), Width(20)])
        self.profileTV.easy.layout([Left(16), Right(16), Top(10).to(self.uploadItemButton, .bottom), Bottom(10).to(self.view.safeAreaLayoutGuide, .bottom)])
    }
    
}
