//
//  ProfileUXFuncs.swift
//  Store test app
//
//  Created by Eugene on 29.03.23.
//

import UIKit
import EasyPeasy


extension ProfileVC {
    
    func changePhotoGestureRecognizer() {
        let logInTap = UITapGestureRecognizer(target: self, action: #selector(self.changePhotoAction))
        self.changePhotoLabel.addGestureRecognizer(logInTap)
        self.changePhotoLabel.isUserInteractionEnabled = true
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        picker.dismiss(animated: true, completion: nil)
        
        if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            self.profileImageView.image = image

            User.shared.profileImage[0] = image
        }
    }
    
}
