//
//  ProfileActions.swift
//  Store test app
//
//  Created by Eugene on 29.03.23.
//

import UIKit
import EasyPeasy


extension ProfileVC {
    
    @objc func changePhotoAction() {
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary){
            self.imagePicker.delegate = self
            self.imagePicker.sourceType = .photoLibrary
            self.imagePicker.allowsEditing = false

            present(self.imagePicker, animated: true, completion: nil)
        }
    }
    
}
