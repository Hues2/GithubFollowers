//
//  GFEmptyStateView.swift
//  GithubFollowers
//
//  Created by Greg Ross on 05/09/2022.
//

import UIKit

class GFEmptyStateView: UIView {
    
    let messageLabel = GFTitleLabel(textAlignment: .center, fontSize: 28)
    let logoimageView = UIImageView()

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    init(message: String){
        super.init(frame: .zero)
        messageLabel.text = message
        configure()
    }
    
    
    private func configure(){
        addSubview(messageLabel)
        addSubview(logoimageView)
        
        
        messageLabel.numberOfLines = 3
        messageLabel.textColor = .secondaryLabel
        
        logoimageView.image = UIImage(named: "empty-state-logo")
        logoimageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            messageLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: -150),
            messageLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 40),
            messageLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -40),
            messageLabel.heightAnchor.constraint(equalToConstant: 200),
            
            
            logoimageView.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 1.3),
            logoimageView.heightAnchor.constraint(equalTo: self.widthAnchor, multiplier: 1.3),
            logoimageView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 170),
            logoimageView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 40)
        ])
        
    }
    
    

}
