//
//  CommentModel.swift
//  WuxusTask
//
//  Created by Mohamed Digwey on 5/26/16.
//  Copyright © 2016 CrossWorkers. All rights reserved.
//

import UIKit

class CommentModel {
    
    var postId :Double
    var id :Double
    var name :String
    var email :String
    var body :String
    
    init()
    {
        postId = 0
        id = 0
        name = ""
        email = ""
        body = ""
    }
    
    init(postId :Double ,
         id :Double ,
         name :String ,
         email :String,
         body :String)
    {
        self.postId = postId
        self.id = id
        self.name = name
        self.email = email
        self.body = body
    }

}
