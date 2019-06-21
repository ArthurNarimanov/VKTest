//
//  SegmenterTableViewCell.swift
//  VKTest
//
//  Created by Ram on 21/06/2019.
//  Copyright © 2019 Arthur Narimanov. All rights reserved.
//

import UIKit

class SegmenterTableViewCell: UITableViewCell, NibLoadable {
    
    @IBOutlet private weak var segmentControl: UISegmentedControl!
    
    var indexChanged: ItemClosure<Int>?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
        addTarget()
    }
    
    
    private func addTarget() {
        segmentControl.addTarget(self, action: #selector(segmentControlChangedIndex(sender:)), for: .valueChanged)
    }
    
    @objc private func segmentControlChangedIndex(sender: UISegmentedControl) {
        indexChanged?(sender.selectedSegmentIndex)
    }
}
