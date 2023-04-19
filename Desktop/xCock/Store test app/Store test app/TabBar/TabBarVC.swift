//
//  TabBarVC.swift
//  Store test app
//
//  Created by Eugene on 17.03.23.
//

import UIKit
import EasyPeasy


class TabBarVC: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self
        
        UITabBar.appearance().backgroundColor = .clear
        UITabBar.appearance().tintColor = .black
        
        let fillerView = UIView()
        fillerView.frame = tabBar.frame
        fillerView.layer.cornerRadius = 25
        fillerView.backgroundColor = .white
        
        self.view.addSubview(fillerView)
        fillerView.easy.layout([Left(0), Right(0), Top(-10).to(self.tabBar, .top), Bottom(-20)])
        
        view.bringSubviewToFront(tabBar)

        let storeVC = StoreVC()
        let favoritesVC = FavoritesVC()
        let backetVC = BacketVC()
        let chatVC = ChatVC()
        let profileVC = ProfileVC()
        
        self.setViewControllers([storeVC, favoritesVC, backetVC, chatVC, profileVC], animated: false)
                        
        guard let items = self.tabBar.items else { return }
        
        let images = ["house", "suit.heart", "cart", "bubble.left", "person"]
        
        for i in 0..<items.count {
            items[i].image = UIImage(systemName: images[i])
        }
    }
    
}

extension TabBarVC: UITabBarControllerDelegate  {
    
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {

        guard let fromView = selectedViewController?.view, let toView = viewController.view else {
          return false
        }

        if fromView != toView {
          UIView.transition(from: fromView, to: toView, duration: 0.3, options: [.transitionCrossDissolve], completion: nil)
        }
        
        return true
    }
    
}
