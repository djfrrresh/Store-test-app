//
//  CategoryCVData.swift
//  Store test app
//
//  Created by Eugene on 21.03.23.
//

import UIKit


extension StoreVC: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return self.catogories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell = self.categoryCV.dequeueReusableCell(withReuseIdentifier: CategoryCVCell.id, for: indexPath) as! CategoryCVCell
            
            let categoryLabel = self.catogories[indexPath.row]
            let categoryImage = self.categoryImages[indexPath.row]
            
            cell.configure(label: categoryLabel, image: categoryImage)
            
            return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
            self.categoryCV.selectItem(at: indexPath, animated: true, scrollPosition: UICollectionView.ScrollPosition.centeredHorizontally)
    }

}
