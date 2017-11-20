//
//  Extensions.swift
//  FoodBreak
//
//  Created by Ankit Sharma on 04/11/17.
//  Copyright © 2017 Ankit Sharma. All rights reserved.
//

import UIKit
import MBProgressHUD

extension UIStoryboard {
    class func getMainStoryboard() -> UIStoryboard {
        return UIStoryboard(name: "Main", bundle: nil)
    }
}

extension UIViewController {
    
    class func getHotelDetailsViewController() -> UIViewController {
        let storyboard = UIStoryboard.getMainStoryboard()
        return storyboard.instantiateViewController(withIdentifier: "FBHotelDetailsViewController")
    }
    
    class func getSettingViewController() -> UIViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        return storyboard.instantiateViewController(withIdentifier: "FBSettingViewController")
    }
}

extension UIAlertController {
    class func showAlert(message: String) -> UIAlertController {
        let alert = UIAlertController.init(title: "Error", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Click", style: .default, handler: nil))
        return alert
    }
}


extension MBProgressHUD {
    class func showHud(view: UIView) {
        let loadingNotification = MBProgressHUD.showAdded(to: view, animated: true)
        loadingNotification.mode = MBProgressHUDMode.indeterminate
        loadingNotification.labelText = "Loading"
    }
    
    class func hideHud(view: UIView) {
        MBProgressHUD.hide(for: view, animated: true)
    }
}
