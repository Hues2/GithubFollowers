//
//  GFBodyLabel.swift
//  GithubFollowers
//
//  Created by Greg Ross on 30/08/2022.
//

import UIKit

class GFBodyLabel: UILabel {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    
    // Custom init
    init(textAlignment: NSTextAlignment){
        super.init(frame: .zero)
        self.textAlignment = textAlignment
        configure()
    }
    
    
    
    private func configure(){
        textColor = .secondaryLabel
        font = UIFont.preferredFont(forTextStyle: .body)
        adjustsFontSizeToFitWidth = true
        minimumScaleFactor = 0.75
        lineBreakMode = .byWordWrapping
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
