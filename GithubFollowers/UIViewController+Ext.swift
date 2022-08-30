//
//  UIViewController+Ext.swift
//  GithubFollowers
//
//  Created by Greg Ross on 30/08/2022.
//

import UIKit

extension UIViewController{
    
    func presentGFAlertOnMainThread(alertTitle: String, message: String, buttonTitle: String){
        DispatchQueue.main.async {
            let alertVC = GFAlertVC(alertTitle: alertTitle, message: message, buttonTitle: buttonTitle)
            alertVC.modalPresentationStyle = .overFullScreen
            alertVC.modalTransitionStyle = .crossDissolve
            self.present(alertVC, animated: true)

        }
    }
    
}
