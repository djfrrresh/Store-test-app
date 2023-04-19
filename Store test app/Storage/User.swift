//
//  User.swift
//  Store test app
//
//  Created by Eugene on 13.03.23.
//

import UIKit


class User {
    
    static let shared = User()
    
    var profileName: [String?] = ["Satria"]
    var profileLastName: [String?] = ["Adhi Pradana"]

    var profileImage: [UIImage?] = [UIImage(named: "satriaImage")]
    
    var profilePassword: [String?] = ["123456"]
    var profileEmail: [String?] = ["jack-hofman10@mail.ru"]
    
    func regNewUser(firstName: String, lastName: String, email: String) {
        self.profileName.append(firstName)
        self.profileLastName.append(lastName)
        self.profileEmail.append(email)
    }
}
