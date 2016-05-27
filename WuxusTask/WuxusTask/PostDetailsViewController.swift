//
//  PostDetailsViewController.swift
//  WuxusTask
//
//  Created by Mohamed Digwey on 5/26/16.
//  Copyright © 2016 CrossWorkers. All rights reserved.
//

import UIKit

class PostDetailsViewController: UIViewController, UITableViewDelegate , UITableViewDataSource {
    var post = PostModel()
    var commentList :[CommentModel] = []
    
    
    @IBOutlet weak var postTitleLabel: UILabel!
    @IBOutlet weak var postBodyLabel: UITextView!
    @IBOutlet weak var commentsTableView: UITableView!
    @IBOutlet weak var loadingActivity: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        postTitleLabel.text = post.title
        postBodyLabel.text  = post.body
        getComments()
    }
    
    // MARK : - Table View Delegate And Data Source
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell :CommentTableViewCell = self.commentsTableView.dequeueReusableCellWithIdentifier("CommentCell") as!CommentTableViewCell
        
        let comment = commentList[indexPath.row]
        
        cell.commentTitle.text = comment.name
        cell.commentEmail.text = comment.email
        cell.commentBody.text  = comment.body
        
        return cell
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return commentList.count
    }
    
 
    func getComments(){
        self.loadingActivity.startAnimating()
        APIController.commentsService({
            jsonResponse,errorDescription, errorValue in
            self.loadingActivity.stopAnimating()

            if(!errorValue) // Success
            {
                if(errorDescription == "")
                {
                    let commentsList = jsonResponse
                    for result in commentsList.arrayValue
                    {
                        let postId = result["postId"].doubleValue
                        let id = result["id"].doubleValue
                        let name = result["name"].stringValue
                        let email = result["email"].stringValue
                        let body = result["body"].stringValue
                        
                        self.commentList.append(CommentModel(postId: postId, id: id, name: name, email: email, body: body))
                    }
                    self.commentsTableView.reloadData()
                }
            }
        },commentID: post.id);
        
    }
}
