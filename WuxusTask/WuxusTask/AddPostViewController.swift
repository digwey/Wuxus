//
//  AddPostViewController.swift
//  WuxusTask
//
//  Created by Mohamed Digwey on 5/26/16.
//  Copyright © 2016 CrossWorkers. All rights reserved.
//

import UIKit

class AddPostViewController: UIViewController,UITextFieldDelegate, UITextViewDelegate {

    @IBOutlet weak var postTitle: UITextField!
    @IBOutlet weak var postBody: UITextView!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
    @IBAction func addPost(sender: AnyObject) {
        if(postTitle.text == "")
        {
            HelperUtil.showAlertError("Please input post title")
        }else {
            var p   = PostModel()
            p.body  = self.postBody.text!
            p.title = self.postTitle.text!
            p.userId = 42
            APIController.addPost(p)
        }
        
    }
}
