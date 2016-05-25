//
//  APIController.swift
//  WuxusTask
//
//  Created by Mohamed Digwey on 5/25/16.
//  Copyright © 2016 CrossWorkers. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class APIController: NSObject {
    
    // MARK : URLs
    static let URL = "http://jsonplaceholder.typicode.com/"
    static let PostsURL = URL + "posts"
    
    // MARK :- Response Handlers
    typealias responseJSONHandler = (JSON!,String , Bool!) -> Void
    
    // MARK :- Web Services
    // MARK :- Get Post List
    static func messagesService(completionHandler: responseJSONHandler!){
        Alamofire.request(.GET, PostsURL)
            .responseJSON {
                response in
                if(response.result.isSuccess) // Success
                {
                    let jsonData = JSON(response.result.value!)
                    completionHandler(jsonData,"",false)
                    print("messages Response : \n \(jsonData)")
                }
                else // Failure
                {
                    HelperUtil.showAlertError(NSLocalizedString("No internet connection", comment: ""))
                    completionHandler(nil,(response.result.error?.description)!,true)
                }
        }
    }
}
