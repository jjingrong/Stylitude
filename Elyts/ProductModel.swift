//
//  ProductModel.swift
//  Elyts
//
//  Created by Jingrong (: on 25/10/15.
//  Copyright © 2015 Lim Jing Rong. All rights reserved.
//

import Foundation
import SwiftyJSON
import Alamofire

class ProductModel {
    let arrayOfProductPrice = [10,
        20,
        30,
        40,
        50,
        60,
        70,
        80,
        90,
        100
    ]
    let arrayOfProducts = ["name1",
        "name2",
        "name3",
        "name4",
        "name5",
        "name6",
        "name7",
        "name8",
        "name9",
        "name10"
    ]
    let arrayOfProductImages = ["photo",
        "photo",
        "photo",
        "photo",
        "photo",
        "photo",
        "photo",
        "photo",
        "photo",
        "photo"
    ]
    
    
    /* Attributes */
    var productID: Int!
    var hipsterScore: Int!
    var productName: String!
    
    /* Functions */
    
    /* getters */
    func getProductName(id: Int) -> String {

        return arrayOfProducts[id]
    }
    
    func getHipsterScore(id: Int) -> Int {
        return 0;
    }
    
    func getPrice(id: Int) -> Int {
        return arrayOfProductPrice[id]
    }
    
    func getImageString(id: Int) -> String {
        return arrayOfProductImages[id]
    }
    
    
}
