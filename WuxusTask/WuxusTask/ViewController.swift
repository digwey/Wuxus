//
//  ViewController.swift
//  WuxusTask
//
//  Created by Mohamed Digwey on 5/25/16.
//  Copyright © 2016 CrossWorkers. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate , UITableViewDataSource{
    var postList :[PostModel] = []
    
    @IBOutlet weak var postsTableView: UITableView!
    @IBOutlet weak var loadingActivity: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getPosts()
    }
    
    // MARK : - Table View Delegate And Data Source
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell :PostTableViewCell = self.postsTableView.dequeueReusableCellWithIdentifier("PostCell") as!PostTableViewCell
        
        let post = postList[indexPath.row]
        
        cell.postTitle.text =  post.title
        cell.postBody.text = post.body
        cell.postBody.lineBreakMode = .ByWordWrapping
        return cell

    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return postList.count
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let postDetailsVC = self.storyboard?.instantiateViewControllerWithIdentifier("postDetailsIdentifier") as!PostDetailsViewController
        postDetailsVC.post = postList[indexPath.row]
        self.navigationController?.pushViewController(postDetailsVC, animated: true)
    }
    
    func getPosts()
    {
        self.loadingActivity.startAnimating()
        APIController.postService()
            {
                jsonResponse,errorDescription, errorValue in
                self.loadingActivity.stopAnimating()
                if(!errorValue) // Success
                {
                    if(errorDescription == "")
                    {
                        let postsList = jsonResponse
                        for result in postsList.arrayValue
                        {
                            let userId = result["userId"].doubleValue
                            let id = result["id"].doubleValue
                            let title = result["title"].stringValue
                            let body = result["body"].stringValue
                            self.postList.append(PostModel(userId: userId, id: id, title: title, body: body))
                        }
                        self.postsTableView.reloadData()
                    }
                }
        }
    }
    
    
    
}

