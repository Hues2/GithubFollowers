//
//  UserInfoVC.swift
//  GithubFollowers
//
//  Created by Greg Ross on 05/09/2022.
//

import UIKit

class UserInfoVC: UIViewController {
    
    var username: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        let doneItem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(dismissVC))
        navigationItem.rightBarButtonItem = doneItem
        
        NetworkManager.shared.getUserInfo(for: username) { [weak self] result in
            guard let self = self else { return }
            
            switch result{
            case .success(let user):
                print(user)
                
            case .failure(let error):
                self.presentGFAlertOnMainThread(alertTitle: "Something went wrong", message: error.localizedDescription, buttonTitle: "Ok")
            }
                
            
        }
    }
    
    
    @objc func dismissVC(){
        dismiss(animated: true)
    }
    


}
