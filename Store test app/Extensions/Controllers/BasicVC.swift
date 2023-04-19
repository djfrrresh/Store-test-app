//
//  BasicVC.swift
//  Store test app
//
//  Created by Eugene on 13.03.23.
//

import UIKit


class BasicVC: UIViewController {
    
    let backColor = UIColor(named: "backColor")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setupHideKeyboardOnTap()
        
        self.view.backgroundColor = self.backColor
        self.navigationController?.navigationBar.tintColor = .black
    }
    
}
