//
//  CategoryCVCell.swift
//  Store test app
//
//  Created by Eugene on 21.03.23.
//

import UIKit
import EasyPeasy


class CategoryCVCell: UICollectionViewCell {
    
    static let id = "CategoryCVCell"
    
    let categoryImage: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.tintColor = UIColor.black
        return imageView
    }()
    
    var backImageView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 20
        view.backgroundColor = .black.withAlphaComponent(0.1)
        return view
    }()
    
    let categoryName: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.lineBreakMode = .byClipping
        label.textColor = .darkGray
        label.font = UIFont(name: "AvenirNext-Medium", size: 8)
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(self.backImageView)
        addSubview(self.categoryName)
        self.backImageView.addSubview(self.categoryImage)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.backImageView.easy.layout([Height(40), Width(40), Top(0)])
        self.categoryImage.easy.layout([CenterY().to(self.backImageView), CenterX().to(self.backImageView), Size(-15).like(self.backImageView)])
        self.categoryName.easy.layout([CenterX(), Top(15).to(self.categoryImage)])
    }
    
    func configure(label: String, image: String) {
        self.categoryName.text = label
        self.categoryImage.image = UIImage(systemName: image)
    }
    
    override var isSelected: Bool {
        didSet {
            if self.isSelected {
                UIView.animate(withDuration: 0.3) {
                    self.backImageView.backgroundColor = .white
                    
                    UIView.animate(withDuration: 0.3) {
                        self.backImageView.backgroundColor = .black.withAlphaComponent(0.1)
                    }
                }
            }
        }
    }
    
}
