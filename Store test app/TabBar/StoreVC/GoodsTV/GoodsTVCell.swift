//
//  GoodsTVCell.swift
//  Store test app
//
//  Created by Eugene on 27.03.23.
//

import UIKit
import EasyPeasy


class GoodsTVCell: UITableViewCell {
    
    static let tableCellId = "goodsCell"
    
    var rowWithGoods: [CVCellModel]?
    
    static let goodsLayout: UICollectionViewFlowLayout = {
        var layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = 20
        layout.minimumInteritemSpacing = 20
        layout.itemSize = CGSize(width: 115, height: 150)
        return layout
    }()
    let goodsCV: UICollectionView = {
        let cv = UICollectionView(frame: .zero, collectionViewLayout: goodsLayout)
        cv.backgroundColor = .clear
        cv.register(GoodsCVCell.self, forCellWithReuseIdentifier: GoodsCVCell.id)
        cv.showsHorizontalScrollIndicator = false
        return cv
    }()
        
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        selectionStyle = .none
        backgroundColor = UIColor.clear
        
        self.goodsCV.dataSource = self
        self.goodsCV.delegate = self
        
        contentView.addSubview(self.goodsCV)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        self.goodsCV.easy.layout([Left(0), Right(0), Top(0), Bottom(0)])
    }
    
    func updateCellWith(row: [CVCellModel]) {
        self.rowWithGoods = row
        self.goodsCV.reloadData()
    }
    
}
