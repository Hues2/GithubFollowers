//
//  GFTitleLabel.swift
//  GithubFollowers
//
//  Created by Greg Ross on 30/08/2022.
//

import UIKit

class GFTitleLabel: UILabel {

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    
    // Custom init
    init(textAlignment: NSTextAlignment, fontSize: CGFloat){
        super.init(frame: .zero)
        self.textAlignment = textAlignment
        self.font = UIFont.systemFont(ofSize: fontSize, weight: .bold) // --> If we wanted a dynamic size, we would use .preferedFont
        configure()
    }
    
    
    
    private func configure(){
        textColor = .label
        adjustsFontSizeToFitWidth = true
        minimumScaleFactor = 0.9
        lineBreakMode = .byTruncatingTail
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }


}
