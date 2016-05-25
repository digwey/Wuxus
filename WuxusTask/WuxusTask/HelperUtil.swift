//
//  HelperUtil.swift
//  WuxusTask
//
//  Created by Mohamed Digwey on 5/25/16.
//  Copyright © 2016 CrossWorkers. All rights reserved.
//

import Foundation
import UIKit
import AFMInfoBanner

class HelperUtil: NSObject {
    
    static func showSuccessAlertView (title:String,mesg:String)
    {
        AFMInfoBanner.showAndHideWithText(mesg, style: AFMInfoBannerStyle.Info)
    }
    
    static func showAlertError (mesg:String)
    {
        AFMInfoBanner.showAndHideWithText(mesg, style: AFMInfoBannerStyle.Error)
    }
    
    static func showAlertViewSuccess (title:String,mesg:String)
    {
        AFMInfoBanner.showAndHideWithText(mesg, style: AFMInfoBannerStyle.Info)
    }
}
