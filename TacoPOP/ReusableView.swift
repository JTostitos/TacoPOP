//
//  ReusableView.swift
//  TacoPOP
//
//  Created by Jonathan Tsistinas on 2/20/17.
//  Copyright © 2017 Jonathan Tsistinas. All rights reserved.
//

import UIKit

protocol ReusableView: class {}

extension ReusableView where Self: UIView {
    
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}

