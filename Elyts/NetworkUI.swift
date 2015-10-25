//
//  NetworkUI.swift
//  Elyts
//
//  Created by Jingrong (: on 25/10/15.
//  Copyright © 2015 Lim Jing Rong. All rights reserved.
//


import Foundation
import Alamofire
import SwiftyJSON

class NetworkUI:NSObject {
    // Singleton pattern
    class var sharedInstance: NetworkUI {
        struct Static {
            static var instance: NetworkUI?
            static var token: dispatch_once_t = 0
        }
        
        dispatch_once(&Static.token) {
            Static.instance = NetworkUI()
        }
        
        return Static.instance!
    }
    
    /* Static URLs */
    

    
    /* Functions */
    
//    func createSandboxUberRequestJSONResponse(params:[String: AnyObject], success: (response: Result<AnyObject>) -> Void, failure: (error: ErrorType?) -> Void) {
//        Alamofire.request(.POST, String(format: "%@%@%@", kBaseUberSandboxURL, kRequestUber), parameters: params)
//            .responseJSON { request, response, result in
//                if result.isSuccess {
//                    success(response: result)
//                } else {
//                    failure(error: result.error)
//                }
//                
//        }
//    }
}
