//
//  DropShadow.swift
//  TacoPOP
//
//  Created by Jonathan Tsistinas on 2/20/17.
//  Copyright © 2017 Jonathan Tsistinas. All rights reserved.
//

import UIKit

protocol DropShadow {}

extension DropShadow where Self: UIView {
    func addDropShadow() {
        //implementation
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.7
        layer.shadowOffset = CGSize.zero
        layer.shadowRadius = 5
    }
}
