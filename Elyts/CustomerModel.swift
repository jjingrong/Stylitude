//
//  UserModel.swift
//  Elyts
//
//  Created by Jingrong (: on 25/10/15.
//  Copyright © 2015 Lim Jing Rong. All rights reserved.
//

import Foundation
import SwiftyJSON
import Alamofire

class CustomerModel {
    // Singleton
    class var sharedInstance: CustomerModel {
        struct Static {
            static var instance: CustomerModel?
            static var token: dispatch_once_t = 0
        }
        
        dispatch_once(&Static.token) {
            Static.instance = CustomerModel()
        }
        
        return Static.instance!
    }
    
    /* Attributes */
    var name : String!
    var historicalData = Dictionary<String, String>()
    
    /* Functions */
    
}
