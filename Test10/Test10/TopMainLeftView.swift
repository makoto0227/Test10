//
//  TopMainLeftView.swift
//  Test10
//
//  Created by 宮崎真 on 2019/10/18.
//  Copyright © 2019 宮崎真. All rights reserved.
//

import UIKit

import PGFramework


protocol TopMainLeftViewDelegate: NSObjectProtocol{
    
}

extension TopMainLeftViewDelegate {
    
}
// MARK: - Property
class TopMainLeftView: BaseView {
    weak var delegate: TopMainLeftViewDelegate? = nil
}

// MARK: - Life cycle
extension TopMainLeftView {
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}

// MARK: - Protocol
extension TopMainLeftView {
    
}

// MARK: - method
extension TopMainLeftView {
    
}

