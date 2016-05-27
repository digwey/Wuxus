//
//  PostModel.swift
//  WuxusTask
//
//  Created by Mohamed Digwey on 5/25/16.
//  Copyright © 2016 CrossWorkers. All rights reserved.
//

import UIKit

struct PostModel {
    
    var userId :Double
    var id :Double
    var title :String
    var body :String
    
    init()
    {
        userId = 0
        id = 0
        title = ""
        body = ""
    }
    
    init(userId :Double ,
         id :Double ,
         title :String ,
         body :String)
    {
        self.userId = userId
        self.id = id
        self.title = title
        self.body = body
    }
    
    
}
