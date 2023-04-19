//
//  JSONParser.swift
//  Store test app
//
//  Created by Eugene on 29.03.23.
//

import UIKit


struct JSONGoodsType: Codable {
    let latest: [JSONGoodsData]?
    let flashSale: [JSONGoodsData]?
    
    enum CodingKeys: String, CodingKey {
        case flashSale = "flash_sale"
        case latest = "latest"
    }
}

struct JSONGoodsData: Codable {
    let category: String
    let name: String
    let price: Double
    let discount: Int?
    let imageUrl: String
    
    enum CodingKeys: String, CodingKey {
        case category = "category"
        case name = "name"
        case price = "price"
        case discount = "discount"
        case imageUrl = "image_url"
    }
}

class JSONParser {
    
    static let shared = JSONParser()
    
    var jsonModels = [JSONGoodsType]()
    
//    var jsonLatestData = [JSONGoodsData]()
//    var jsonFlashSaleData = [JSONGoodsData]()
    
    let urlArray: [String] = ["https://run.mocky.io/v3/cc0071a1-f06e-48fa-9e90-b1c2a61eaca7", "https://run.mocky.io/v3/a9ceeb6e-416d-4352-bde6-2203416576ac"]
    
    func jsonDecode(url: String) {
        guard let url = URL(string: url) else { return }
        
        let semaphore = DispatchSemaphore(value: 0)
        URLSession.shared.dataTask(with: url) { [self] data, _, error in
            if let data = data {
                let decoder = JSONDecoder()

                let goods: JSONGoodsType = try! decoder.decode(JSONGoodsType.self, from: data)
                self.jsonModels.append(goods)
                semaphore.signal()
            }
            else {
                print("no data")
            }
        }.resume()
        _ = semaphore.wait(timeout: .distantFuture)
//        print("DATA: \(String(describing: self.jsonLatestData))")
//        print("MODELS: \(String(describing: self.jsonModels[0].flashSale))")
//        print("MODELS: \(String(describing: self.jsonModels))")
    }
    
}
