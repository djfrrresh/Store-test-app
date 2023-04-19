//
//  GoodsCVData.swift
//  Store test app
//
//  Created by Eugene on 27.03.23.
//

import UIKit


extension GoodsTVCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.rowWithGoods?.count ?? 0
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = self.goodsCV.dequeueReusableCell(withReuseIdentifier: GoodsCVCell.id, for: indexPath) as? GoodsCVCell {
            
            let productName: String = self.rowWithGoods?[indexPath.item].name ?? ""
            let price: String = "$ \(String(self.rowWithGoods?[indexPath.item].price ?? 0.0))"
            let category: String = self.rowWithGoods?[indexPath.item].category ?? ""
            let image: UIImage = self.rowWithGoods?[indexPath.item].photo ?? UIImage(systemName: "trash")!
            let discount: String = "\(String(self.rowWithGoods?[indexPath.item].discount ?? 0))% off"
            
            cell.productLabel.text = productName
            cell.priceLabel.text = price
            cell.categoryLabel.text = category
            cell.discountLabel.text = discount
            cell.backImageView.image = image
            
            if self.rowWithGoods?[indexPath.item].discount ?? 0 > 0 {
                cell.setDiscount(bool: true)
            } else {
                cell.setDiscount(bool: false)
            }

            return cell
        }

        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if self.rowWithGoods?[indexPath.item].discount ?? 0 > 0 {
            return CGSize(width: 172, height: 220)
        }
        
        return CGSize(width: 116, height: 150)
    }
    
}
