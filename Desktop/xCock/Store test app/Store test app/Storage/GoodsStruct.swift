//
//  GoodsStruct.swift
//  Store test app
//
//  Created by Eugene on 28.03.23.
//

import UIKit


struct TVCellModel {
    var section: String
    var goods: [CVCellModel]
}

struct CVCellModel {
    var category: String
    var name: String
    var price: Float
    var discount: Int
    var photo: UIImage
}

struct Goods {
    
    var goodsArr = [
        TVCellModel(section: "Latest", goods:
            [
                CVCellModel(category: "Phones", name: "Samsung S10", price: 1000, discount: 0, photo: UIImage(named: "samsung")!),
                CVCellModel(category: "Games", name: "Play Station 5 console", price: 700, discount: 0, photo: UIImage(named: "ps5")!),
                CVCellModel(category: "Games", name: "Xbox ONE", price: 500, discount: 0, photo: UIImage(named: "xbox")!),
                CVCellModel(category: "Cars", name: "BMW X6M", price: 35000, discount: 0, photo: UIImage(named: "x6m")!)
            ]),
        TVCellModel(section: "Flash sale", goods:
            [
                CVCellModel(category: "Kids", name: "New Balance Sneakers", price: 22.5, discount: 30, photo: UIImage(named: "nb")!),
                CVCellModel(category: "Kids", name: "Reebok Classic", price: 24, discount: 30, photo: UIImage(named: "reebok")!)
            ]),
        TVCellModel(section: "Brands", goods:
            [
                CVCellModel(category: "Phones", name: "Samsung S10", price: 1000, discount: 0, photo: UIImage(named: "samsung")!),
                CVCellModel(category: "Games", name: "Play Station 5 console", price: 700, discount: 0, photo: UIImage(named: "ps5")!),
                CVCellModel(category: "Games", name: "Xbox ONE", price: 500, discount: 0, photo: UIImage(named: "xbox")!),
                CVCellModel(category: "Cars", name: "BMW X6M", price: 35000, discount: 0, photo: UIImage(named: "x6m")!)
            ])
    ]

}
