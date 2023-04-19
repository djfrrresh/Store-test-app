//
//  ProfileVC.swift
//  Store test app
//
//  Created by Eugene on 14.03.23.
//

import UIKit
import EasyPeasy


class ProfileVC: BasicVC, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
        
    let profileImageView: UIImageView = {
        let imageView = UIImageView(image: User.shared.profileImage[0])
        imageView.layer.cornerRadius = 30
        imageView.clipsToBounds = true
        imageView.layer.borderWidth = 1
        imageView.layer.borderColor = UIColor.lightGray.cgColor
        return imageView
    }()
    let uploadImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(systemName: "square.and.arrow.up"))
        imageView.tintColor = .white
        return imageView
    }()
    
    let profileName = UILabel(text: "\(User.shared.profileName[0] ?? "") \(User.shared.profileLastName[0] ?? "")", color: .darkGray, fontSize: 20, fontName: "Avenir Black")
    let changePhotoLabel = UILabel(text: "Change photo", color: .black, fontSize: 10, fontName: "Avenir Light")
    let profileTitle = UILabel(text: "Profile", color: .black, fontSize: 18, fontName: "Avenir Black")
    
    let uploadItemButton = UIButton(name: "Upload item", background: UIColor(named: "SignInColor") ?? .clear, textColor: .white)
    
    let profileTV: UITableView = {
        let tv = UITableView()
        tv.register(CustomCell.self, forCellReuseIdentifier: CustomCell.tableCellId)
        tv.backgroundColor = .clear
        tv.showsVerticalScrollIndicator = false
        return tv
    }()
    
    var imagePicker = UIImagePickerController()
        
    override func viewDidAppear(_ animated: Bool) {
        
        if let navigationController = self.navigationController {
            var viewControllers = navigationController.viewControllers

            for (index, viewController) in viewControllers.enumerated() where viewController is SignInVC {
                viewControllers.remove(at: index)
            }
            for (index, viewController) in viewControllers.enumerated() where viewController is LoginVC {
                viewControllers.remove(at: index)
            }
        
            navigationController.setViewControllers(viewControllers, animated: true)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
                        
        self.profileTV.delegate = self
        self.profileTV.dataSource = self
                        
        self.navigationItem.hidesBackButton = true
        
        self.profileSubviews()
        self.changePhotoGestureRecognizer()
    }
    
}
