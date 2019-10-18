//
//  TopMainRightView.swift
//  Test10
//
//  Created by 宮崎真 on 2019/10/18.
//  Copyright © 2019 宮崎真. All rights reserved.
//

import UIKit

import PGFramework


protocol TopMainRightViewDelegate: NSObjectProtocol{
    
}

extension TopMainRightViewDelegate {
    
}
// MARK: - Property
class TopMainRightView: BaseView {
    weak var delegate: TopMainRightViewDelegate? = nil
    @IBOutlet weak var tableView: UITableView!
}

// MARK: - Life cycle
extension TopMainRightView {
    override func awakeFromNib() {
        super.awakeFromNib()
        tableView.dataSource = self
        loadTableViewCellFromXib(tableView: tableView, cellName: "TopMainTableViewCell")
    }
}

// MARK: - Protocol
extension TopMainRightView: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell: TopMainTableViewCell = tableView.dequeueReusableCell(withIdentifier: "TopMainTableViewCell", for: indexPath) as? TopMainTableViewCell else{return UITableViewCell()}
        return cell
    }
    
    
}

// MARK: - method
extension TopMainRightView {
    
}

