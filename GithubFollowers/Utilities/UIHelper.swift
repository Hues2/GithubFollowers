//
//  UIHelper.swift
//  GithubFollowers
//
//  Created by Greg Ross on 31/08/2022.
//

import UIKit


struct UIHelper{
    
    static func createThreeColumnFlowLayout(in view: UIView) -> UICollectionViewFlowLayout{
        
        let width = view.bounds.width
        let padding: CGFloat = 12 // --> Padding at each side o the collectionView
        let minimumItemSpacing: CGFloat = 10 // --> Spacing between each item
        let availableWidth = width - (padding * 2) - (minimumItemSpacing * 2)
        
        let itemWidth = availableWidth / 3
        
        
        let flowLayout = UICollectionViewFlowLayout()
        
        flowLayout.sectionInset = UIEdgeInsets(top: padding, left: padding, bottom: padding, right: padding)
        flowLayout.itemSize = CGSize(width: itemWidth, height: itemWidth + 40)
    
        return flowLayout
    }
}
