//
//  GFButton.swift
//  GithubFollowers
//
//  Created by Greg Ross on 29/08/2022.
//

import UIKit

class GFButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    
    // Custom init with custom colour and title text
    init(backgroundColor: UIColor, title: String){
        super.init(frame: .zero)
        self.backgroundColor = backgroundColor
        self.setTitle(title, for: .normal)
        configure()
        
    }
    
    
    
    private func configure(){
        layer.cornerRadius = 10
        setTitleColor(.white, for: .normal) // -> This is the default anyway
        titleLabel?.font = UIFont.preferredFont(forTextStyle: .headline)
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    
    
    // This handles init from storyboard
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
}
