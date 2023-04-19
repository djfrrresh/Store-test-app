//
//  GoodsTVData.swift
//  Store test app
//
//  Created by Eugene on 27.03.23.
//

import UIKit
import EasyPeasy


extension StoreVC: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return goodsArray.goodsArr.count
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView()
        headerView.backgroundColor = self.backColor
        let titleLabel = UILabel(text: "", color: .black, fontSize: 20, fontName: "Avenir Next Demi Bold")
        let viewAllLabel = UILabel(text: "View all", color: .gray, fontSize: 12, fontName: "Avenir Medium")
        headerView.addSubview(titleLabel)
        headerView.addSubview(viewAllLabel)
        
        titleLabel.easy.layout([CenterY(0), Left(0)])
        viewAllLabel.easy.layout([CenterY(), Right(0)])
        
        titleLabel.text = goodsArray.goodsArr[section].section
        return headerView
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: GoodsTVCell.tableCellId, for: indexPath) as? GoodsTVCell {
            
            let rowArray = goodsArray.goodsArr[indexPath.section].goods
            cell.updateCellWith(row: rowArray)
            
            return cell
        }
        
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {

        if goodsArray.goodsArr[indexPath.section].section == "Flash sale" {
            return 220
        }
        
        return 150
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 44
    }
}
