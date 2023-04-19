//
//  ProfileTVData.swift
//  Store test app
//
//  Created by Eugene on 14.03.23.
//

import UIKit
import EasyPeasy


extension ProfileVC: UITableViewDelegate, UITableViewDataSource {

    func tableView(_ tableView: UITableView,
                   numberOfRowsInSection section: Int) -> Int {
        return 7
    }

    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomCell.tableCellId, for: indexPath) as? CustomCell
        
        let arrowImage: UIImageView = {
            let image = UIImageView()
            image.image = UIImage(systemName: "chevron.right")
            image.tintColor = UIColor.black
            return image
        }()
        
        let balance: Int = 1593
        let balanceLabel = UILabel(text: "$ \(balance)", color: .black, fontSize: 16, fontName: "Arial")
        
        switch indexPath.row {
        case 0:
            cell!.extraView(view: arrowImage)
            cell!.settingsLabel.text = "Trade store"
            cell!.settingsImage.image = UIImage(systemName: "creditcard")
            break
        case 1:
            cell!.extraView(view: arrowImage)
            cell!.settingsLabel.text = "Payment method"
            cell!.settingsImage.image = UIImage(systemName: "creditcard")
            break
        case 2:
            cell!.extraView(view: balanceLabel)
            cell!.settingsLabel.text = "Balance"
            cell!.settingsImage.image = UIImage(systemName: "creditcard")
            break
        case 3:
            cell!.extraView(view: arrowImage)
            cell!.settingsLabel.text = "Trade history"
            cell!.settingsImage.image = UIImage(systemName: "creditcard")
            break
        case 4:
            cell!.extraView(view: arrowImage)
            cell!.settingsLabel.text = "Restore Purchase"
            cell!.settingsImage.image = UIImage(systemName: "arrow.triangle.2.circlepath")
            break
        case 5:
            cell!.settingsLabel.text = "Help"
            cell!.settingsImage.image = UIImage(systemName: "questionmark.circle")
            break
        case 6:
            cell!.settingsLabel.text = "Log out"
            cell!.settingsImage.image = UIImage(systemName: "square.and.arrow.down")
            cell!.settingsImage.transform = CGAffineTransform(rotationAngle: (CGFloat)(Double.pi/(-2)));
            break
        default:
            cell!.settingsLabel.text = "cell"
            cell!.settingsImage.image = UIImage(systemName: "creditcard")
        }
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView,
                   didSelectRowAt indexPath: IndexPath) {
        self.profileTV.deselectRow(at: indexPath, animated: true)
        
        switch indexPath.row {
        case 6:
            self.view.window?.rootViewController = UINavigationController(rootViewController: SignInVC())
            self.view.window?.makeKeyAndVisible()

            navigationController?.pushViewController(SignInVC(), animated: true)
            navigationController?.viewControllers.removeAll(where: { self === $0 })
            break
        default:
            print("selected row: \(indexPath.row + 1)")
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
}
