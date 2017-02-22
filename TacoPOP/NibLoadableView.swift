//
//  NibLoadableView.swift
//  TacoPOP
//
//  Created by Jonathan Tsistinas on 2/20/17.
//  Copyright © 2017 Jonathan Tsistinas. All rights reserved.
//

import UIKit

protocol NibLoadableView: class {}

extension NibLoadableView where Self: UIView {
    static var nibName: String {
        return String(describing: self)
    }
}
