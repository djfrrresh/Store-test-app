//
//  ProfileTVCustomCell.swift
//  Store test app
//
//  Created by Eugene on 14.03.23.
//

import UIKit
import EasyPeasy


class CustomCell: UITableViewCell {
    
    static let tableCellId = "ProfileCustomCell"
            
    var backView: UIView = {
        let view = View()
        view.clipsToBounds = true
        return view
    }()
    var backImageView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 20
        view.backgroundColor = .black.withAlphaComponent(0.1)
        return view
    }()
    var extraIconView: UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        return view
    }()
         
    var settingsImage: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFill
        image.tintColor = UIColor.black
        image.clipsToBounds = true
        return image
    }()
    
    var settingsLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = UIFont(name: "Avenir Medium", size: 15)
        return label
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        selectionStyle = .none
        
        addSubview(self.backView)
        self.backView.addSubview(self.backImageView)
        self.backView.addSubview(self.extraIconView)
        self.backView.addSubview(self.settingsLabel)
        self.backImageView.addSubview(self.settingsImage)
        
        backgroundColor = UIColor.clear
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func extraView(view: UIView) {
        self.backView.addSubview(view)
        view.easy.layout([Right(0).to(self.backView), CenterY()])
    }
    
    override func layoutSubviews() {
        self.backView.easy.layout([Left(16), Right(16), Height(60)])
        self.backImageView.easy.layout([Height(40), Width(40), CenterY()])
        self.extraIconView.easy.layout([Right(0).to(self.backView), Width(40), Height(40), CenterY()])

        self.settingsImage.easy.layout([CenterY().to(self.backImageView), CenterX().to(self.backImageView), Size(-15).like(self.backImageView)])

        self.settingsLabel.easy.layout([Height(16), Left(10).to(self.backImageView), CenterY()])
    }
    
}
