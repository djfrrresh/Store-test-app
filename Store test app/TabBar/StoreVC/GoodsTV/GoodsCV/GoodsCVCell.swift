//
//  GoodsCVCell.swift
//  Store test app
//
//  Created by Eugene on 24.03.23.
//

import UIKit
import EasyPeasy


class GoodsCVCell: UICollectionViewCell {
    
    static let id = "GoodsCVCell"
    
    var discountView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 10
        view.isHidden = true
        view.backgroundColor = UIColor(red: 0.976, green: 0.227, blue: 0.227, alpha: 1)
        return view
    }()
    var categoryView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 7
        view.backgroundColor = UIColor(red: 0.769, green: 0.769, blue: 0.769, alpha: 1)
        return view
    }()
    var addButtonView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 0.898, green: 0.914, blue: 0.937, alpha: 1)
        return view
    }()
    var favoriteButtonView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 15
        view.backgroundColor = UIColor(red: 0.898, green: 0.914, blue: 0.937, alpha: 1)
        view.isHidden = true
        return view
    }()

    var backImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.layer.cornerRadius = 15
        imageView.backgroundColor = .gray
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        return imageView
    }()
    var plusImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(systemName: "plus"))
        imageView.tintColor = UIColor(red: 0.329, green: 0.333, blue: 0.537, alpha: 1)
        return imageView
    }()
    var heartImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(systemName: "heart"))
        imageView.tintColor = UIColor(red: 0.329, green: 0.333, blue: 0.537, alpha: 1)
        imageView.isHidden = true
        return imageView
    }()
    
    let categoryLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.textAlignment = .center
        label.lineBreakMode = .byClipping
        return label
    }()
    let productLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.textAlignment = .left
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 2
        
        return label
    }()
    let priceLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.textAlignment = .center
        label.lineBreakMode = .byClipping
        return label
    }()
    let discountLabel: UILabel = {
        let label = UILabel()
        label.isHidden = true
        label.textColor = .white
        label.textAlignment = .center
        label.lineBreakMode = .byClipping
        return label
    }()
    
    let strokeTextAttributes = [
      NSAttributedString.Key.strokeColor : UIColor.black,
      NSAttributedString.Key.foregroundColor : UIColor.white,
      NSAttributedString.Key.strokeWidth : -3,
    ] as [NSAttributedString.Key : Any]
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(self.backImageView)
        self.backImageView.addSubview(self.priceLabel)
        self.backImageView.addSubview(self.addButtonView)
        self.backImageView.addSubview(self.favoriteButtonView)
        self.backImageView.addSubview(self.productLabel)
        self.backImageView.addSubview(self.categoryView)
        self.backImageView.addSubview(self.discountView)
        
        self.discountView.addSubview(self.discountLabel)
        self.categoryView.addSubview(self.categoryLabel)
        self.addButtonView.addSubview(self.plusImageView)
        self.favoriteButtonView.addSubview(self.heartImageView)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
                
        self.backImageView.easy.layout([Top(0), Bottom(0), Left(0), Right(0)])
        self.addButtonView.easy.layout([Bottom(5), Right(5)])
        self.plusImageView.easy.layout([CenterX(), CenterY()])
        
        self.categoryLabel.easy.layout([CenterX(), CenterY(), Left(0), Right(0)])
        self.priceLabel.easy.layout([Left(10)])
        
        self.productLabel.easy.layout([Left(10)])
        
        self.productLabel.attributedText = NSMutableAttributedString(string: productLabel.text ?? "", attributes: strokeTextAttributes)
        self.priceLabel.attributedText = NSMutableAttributedString(string: priceLabel.text ?? "", attributes: strokeTextAttributes)
    }
    
    func setDiscount(bool: Bool) {
        if bool {
            self.categoryView.easy.layout([Height(17), Width(50), Left(10), Bottom(85)])
            self.addButtonView.easy.layout([Height(35), Width(35)])
            self.discountView.easy.layout([Right(7), Top(7), Width(50), Height(20)])
            self.heartImageView.easy.layout([CenterX(), CenterY(), Height(18), Width(20)])
            self.favoriteButtonView.easy.layout([Height(30), Width(30), Right(5).to(self.addButtonView, .left), CenterY().to(self.addButtonView)])
            self.plusImageView.easy.layout([Height(20), Width(20)])
            
            self.discountLabel.easy.layout([CenterX(), CenterY()])
            self.priceLabel.easy.layout([Bottom(15)])
            self.productLabel.easy.layout([Left(10), Right(10).to(self.favoriteButtonView, .left), Top(10).to(self.categoryView, .bottom)])

            self.addButtonView.layer.cornerRadius = 18
            
            self.categoryLabel.font = UIFont(name: "Apple SD Gothic Neo Bold", size: 10)
            self.priceLabel.font = UIFont(name: "Arial Bold", size: 14)
            self.productLabel.font = UIFont(name: "Arial Bold", size: 15)
            self.discountLabel.font = UIFont(name: "Apple SD Gothic Neo Bold", size: 10)

            self.discountView.isHidden = false
            self.discountLabel.isHidden = false
            self.favoriteButtonView.isHidden = false
            self.heartImageView.isHidden = false
        } else {
            self.categoryView.easy.layout([Height(15), Width(35), Left(10), Bottom(55)])
            self.addButtonView.easy.layout([Height(20), Width(20)])
            self.plusImageView.easy.layout([CenterX(), CenterY(), Height(15), Width(15)])
            
            self.priceLabel.easy.layout([Bottom(7)])
            self.productLabel.easy.layout([Right(20).to(self.addButtonView, .left), Top(5).to(self.categoryView, .bottom)])
            
            self.addButtonView.layer.cornerRadius = 10
            
            self.categoryLabel.font = UIFont(name: "Apple SD Gothic Neo Bold", size: 7)
            self.priceLabel.font = UIFont(name: "Arial Bold", size: 10)
            self.productLabel.font = UIFont(name: "Arial Bold", size: 10)
        }
    }
    
    override var isSelected: Bool {
        didSet {
            if self.isSelected {
                UIView.animate(withDuration: 0.3) {
                    self.backImageView.backgroundColor = .lightGray
                    
                UIView.animate(withDuration: 0.3) {
                    self.backImageView.backgroundColor = .gray
                    }
                }
            }
        }
    }
    
}
