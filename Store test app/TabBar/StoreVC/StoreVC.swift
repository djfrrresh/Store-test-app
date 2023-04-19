//
//  StoreVC.swift
//  Store test app
//
//  Created by Eugene on 21.03.23.
//

import UIKit


class StoreVC: BasicVC {    
    
    let tradeLabel = UILabel(text: "Trade by", color: .black, fontSize: 26, fontName: "AvenirNext-DemiBold")
    let bataLabel = UILabel(text: "bata", color: .blue, fontSize: 26, fontName: "AvenirNext-DemiBold")
    let locationLabel = UILabel(text: "Location", color: .darkGray, fontSize: 12, fontName: "Avenir Next Medium")
    
    let listImageView: UIImageView = {
        let image = UIImageView(image: UIImage(systemName: "text.justify"))
        image.tintColor = .black
        return image
    }()
    let arrowImageView: UIImageView = {
        let image = UIImageView(image: UIImage(systemName: "chevron.down"))
        image.tintColor = .black
        return image
    }()
    let profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.layer.cornerRadius = 20
        imageView.clipsToBounds = true
        imageView.layer.borderWidth = 1
        imageView.layer.borderColor = UIColor.black.cgColor
        return imageView
    }()
    
    static private let categoryLayout: UICollectionViewFlowLayout = {
        var layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = 20
        layout.minimumInteritemSpacing = 20
        layout.itemSize = CGSize(width: 40, height: 60)
        return layout
    }()
    let categoryCV: UICollectionView = {
        let cv = UICollectionView(frame: .zero, collectionViewLayout: categoryLayout)
        cv.backgroundColor = .clear
        cv.register(CategoryCVCell.self, forCellWithReuseIdentifier: CategoryCVCell.id)
        cv.showsHorizontalScrollIndicator = false
        return cv
    }()
    
    let storeTV: UITableView = {
        let tv = UITableView()
        tv.register(GoodsTVCell.self, forCellReuseIdentifier: GoodsTVCell.tableCellId)
        tv.backgroundColor = .clear
        tv.showsVerticalScrollIndicator = false
        return tv
    }()
    
    let catogories: [String] = ["Phones", "Headphones", "Games", "Cars", "Furniture", "Kids"]
    let categoryImages: [String] = ["iphone.homebutton", "headphones", "gamecontroller", "car", "bed.double", "face.smiling"]
    
    let searchBar = UITextField(defaultText: "", keyboard: .default, placeholder: "What are you looking for?")
    
    var goodsArray = Goods()
    
//    let jsonDecode = JSONParser.shared
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        self.categoryCV.delegate = self
        self.storeTV.delegate = self
        
        self.categoryCV.dataSource = self
        self.storeTV.dataSource = self
        
        self.tradeByBataStack()
        self.locationStack()
        self.storeSubviews()
        
//        self.searchBar.setPlaceholder(placeholder: "aaa")
        
//        self.jsonDecode.jsonDecode(url: "https://run.mocky.io/v3/cc0071a1-f06e-48fa-9e90-b1c2a61eaca7")
//        self.jsonDecode.jsonDecode(url: "https://run.mocky.io/v3/a9ceeb6e-416d-4352-bde6-2203416576ac")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.profileImageView.image = User.shared.profileImage[0]
    }
    
}
