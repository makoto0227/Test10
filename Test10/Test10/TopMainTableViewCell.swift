//
//  TopMainTableViewCell.swift
//  Test10
//
//  Created by 宮崎真 on 2019/10/18.
//  Copyright © 2019 宮崎真. All rights reserved.
//

import UIKit

import PGFramework


protocol TopMainTableViewCellDelegate: NSObjectProtocol{
    
}

extension TopMainTableViewCellDelegate {
    
}
// MARK: - Property
class TopMainTableViewCell: BaseTableViewCell {
    weak var delegate: TopMainTableViewCellDelegate? = nil
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var UICollectionViewFlowLayout: UICollectionViewFlowLayout!
    var color: [UIColor] = [#colorLiteral(red: 0.2980392157, green: 0.2980392157, blue: 0.2980392157, alpha: 1), #colorLiteral(red: 1, green: 0.4629903603, blue: 0.4885456826, alpha: 1) , #colorLiteral(red: 0.9923004706, green: 0.6024490477, blue: 1, alpha: 1), #colorLiteral(red: 0.6728996504, green: 1, blue: 0.993861311, alpha: 1), #colorLiteral(red: 0.7472870398, green: 1, blue: 0.5343445913, alpha: 1)]
}

// MARK: - Life cycle
extension TopMainTableViewCell {
    override func awakeFromNib() {
        super.awakeFromNib()
        collectionView.dataSource = self
        loadCollectionViewCellFromXib(collectionView: collectionView, cellName: "TopMainCollectionViewCell")
    }
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        UICollectionViewFlowLayout.estimatedItemSize = CGSize(width: collectionView.contentSize.width, height: 60)
    }
}

// MARK: - Protocol
extension TopMainTableViewCell: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell: TopMainCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "TopMainCollectionViewCell", for: indexPath) as? TopMainCollectionViewCell else{return UICollectionViewCell()}
        cell.view.backgroundColor = color[indexPath.row]
        return cell
    }
    
    
}

// MARK: - method
extension TopMainTableViewCell {
    
}

