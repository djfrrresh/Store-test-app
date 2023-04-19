//
//  StoreUIFuncs.swift
//  Store test app
//
//  Created by Eugene on 21.03.23.
//

import UIKit
import EasyPeasy


extension StoreVC {
    
    func locationStack() {
        let locationPhotoStack = UIStackView()
        let locationArrowStack = UIStackView()
        
        self.setStack(stack: locationArrowStack, axis: .horizontal, spacing: 5, alignment: .center, distribution: .fill, viewsArray: [self.locationLabel, self.arrowImageView])
        
        self.setStack(stack: locationPhotoStack, axis: .vertical, spacing: 10, alignment: .center, distribution: .fill, viewsArray: [self.profileImageView, locationArrowStack])
        
        self.profileImageView.easy.layout([Width(40), Height(40)])
        
        self.view.addSubview(locationPhotoStack)
        locationPhotoStack.easy.layout([Top(20).to(self.view.safeAreaLayoutGuide, .top), Right(30)])
    }
    
    func tradeByBataStack() {
        let tradeByBataStack = UIStackView()
        
        self.setStack(stack: tradeByBataStack, axis: .horizontal, spacing: -17, alignment: .center, distribution: .fill, viewsArray: [self.tradeLabel, self.bataLabel])
        
        self.view.addSubview(tradeByBataStack)
        tradeByBataStack.easy.layout([Top(20).to(self.view.safeAreaLayoutGuide, .top), CenterX()])
    }
    
    func storeSubviews() {
        self.view.addSubview(self.listImageView)
        self.view.addSubview(self.searchBar)
        self.view.addSubview(self.categoryCV)
        self.view.addSubview(self.storeTV)
        
        self.listImageView.easy.layout([Top(20).to(self.view.safeAreaLayoutGuide, .top), Left(15), Height(30), Width(28)])
        self.searchBar.easy.layout([Top(10).to(self.locationLabel, .bottom), Left(56), Right(56), Height(24)])
        self.categoryCV.easy.layout([Top(15).to(self.searchBar, .bottom), Left(15), Right(15), Height(60)])
        self.storeTV.easy.layout([Top(0).to(self.categoryCV, .bottom), Left(10), Right(10), Bottom(20).to(self.view.safeAreaLayoutGuide, .bottom)])
    }
    
}
