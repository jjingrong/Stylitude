//
//  CartModel.swift
//  Elyts
//
//  Created by Jingrong (: on 25/10/15.
//  Copyright © 2015 Lim Jing Rong. All rights reserved.
//

import Foundation
import SwiftyJSON
import Alamofire

class CartModel {
    // Singleton
    class var sharedInstance: CartModel {
        struct Static {
            static var instance: CartModel?
            static var token: dispatch_once_t = 0
        }
        
        dispatch_once(&Static.token) {
            Static.instance = CartModel()
        }
        
        return Static.instance!
    }
    
    /* Attributes */
    var cartItems: [Int]!
    
    init() {
        cartItems = []
    }
    
    /* Functions */
    /* Setters */
    func addItemToCart(id: Int) {
        self.cartItems.append(id)
    }
    
    
    /* Getters */
    func getTotalItems() -> Int {
        return cartItems.count
    }
    
    func getCartItems() -> [Int] {
        return cartItems
    }
    
}
