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
    static let CommentsURL = URL + "comments"
    // MARK :- Response Handlers
    typealias responseJSONHandler = (JSON!,String , Bool!) -> Void
    
    // MARK :- Web Services
    // MARK :- Get Post List
    static func postService(completionHandler: responseJSONHandler!){
        Alamofire.request(.GET, PostsURL)
            .responseJSON {
                response in
                if(response.result.isSuccess) // Success
                {
                    let jsonData = JSON(response.result.value!)
                    completionHandler(jsonData,"",false)
                }
                else // Failure
                {
                    HelperUtil.showAlertError(NSLocalizedString("No internet connection", comment: ""))
                    completionHandler(nil,(response.result.error?.description)!,true)
                }
        }
    }
    
    
    // MARK :- Get Comments List
    static func commentsService(completionHandler: responseJSONHandler!, commentID :Double ){
        let commentURL = "\(CommentsURL)?postId=\(commentID)"
        Alamofire.request(.GET, commentURL)
            .responseJSON {
                response in
                if(response.result.isSuccess) // Success
                {
                    let jsonData = JSON(response.result.value!)
                    completionHandler(jsonData,"",false)
                }
                else // Failure
                {
                    HelperUtil.showAlertError(NSLocalizedString("No internet connection", comment: ""))
                    completionHandler(nil,(response.result.error?.description)!,true)
                }
        }
    }
    
    static func addPost(P: PostModel) {
        
        let pd = [
            "title": P.title,
            "body": P.body,
            "userId": P.userId
        ]
        
        Alamofire.request(.POST, URL, parameters: pd as? [String : AnyObject], encoding:.JSON)
            .responseJSON { response in
                switch response.result {
                case .Success(let responseContent):
                    print(responseContent)
                    HelperUtil.showAlertViewSuccess("Post added successfully", mesg: "Post added successfully")
                    break
                case .Failure(let error):
                    print(error)
                    break
                }
        }
    }

}
