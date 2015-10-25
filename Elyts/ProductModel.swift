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
    
    /* Attributes */
    var productID: Int!
    var hipsterScore: Int!
    var productName: String!
    
    /* Functions */
    
    /* getters */
    private func getProductName(id: Int) -> String {
        return "";
    }
    
    private func getHipsterScore(id: Int) -> Int {
        return 0;
    }
    
    private func getPrice(id: Int) -> Int {
        return 0;
    }
    
}
