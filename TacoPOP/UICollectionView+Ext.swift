//
//  UICollectionView+Ext.swift
//  TacoPOP
//
//  Created by Jonathan Tsistinas on 2/22/17.
//  Copyright © 2017 Jonathan Tsistinas. All rights reserved.
//

import UIKit

extension UICollectionView {
    func register<T: UICollectionViewCell>(_: T.Type) where T: ReusableView, T: NibLoadableView {
        
        let nib = UINib(nibName: T.nibName, bundle: nil)
        register(nib, forCellWithReuseIdentifier: T.reuseIdentifier)
    }
    
    func dequeReusableCell<T: UICollectionViewCell>(forIndexpath indexPath: NSIndexPath) -> T where T: ReusableView {
        
        guard let cell = dequeueReusableCell(withReuseIdentifier: T.reuseIdentifier, for: indexPath as IndexPath) as? T else {
            fatalError("Could not deque cell with identifier: \(T.reuseIdentifier)")
        }
        return cell
    }
}


extension UICollectionViewCell: ReusableView {}
