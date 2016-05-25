//
//  PostTableViewCell.swift
//  WuxusTask
//
//  Created by Mohamed Digwey on 5/26/16.
//  Copyright © 2016 CrossWorkers. All rights reserved.
//

import UIKit

class PostTableViewCell: UITableViewCell {

    @IBOutlet weak var postTitle: UILabel!
    @IBOutlet weak var postBody: UILabel!

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
