//
//  TopMainCollectionViewCell.swift
//  Test10
//
//  Created by 宮崎真 on 2019/10/18.
//  Copyright © 2019 宮崎真. All rights reserved.
//

import UIKit

import PGFramework


protocol TopMainCollectionViewCellDelegate: NSObjectProtocol{
    
}

extension TopMainCollectionViewCellDelegate {
    
}
// MARK: - Property
class TopMainCollectionViewCell: BaseCollectionViewCell {
    weak var delegate: TopMainCollectionViewCellDelegate? = nil
    @IBOutlet weak var view: UIView!
}

// MARK: - Life cycle
extension TopMainCollectionViewCell {
    override func awakeFromNib() {
        super.awakeFromNib()
        setIcon()
    }
}

// MARK: - Protocol
extension TopMainCollectionViewCell {
    
}

// MARK: - method
extension TopMainCollectionViewCell {
    func setIcon(){
        view.layer.cornerRadius = 20
        view.layer.masksToBounds = true
    }
}

