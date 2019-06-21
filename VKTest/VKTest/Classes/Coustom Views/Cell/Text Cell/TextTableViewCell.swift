//
//  TextTableViewCell.swift
//  VKTest
//
//  Created by Ram on 21/06/2019.
//  Copyright © 2019 Arthur Narimanov. All rights reserved.
//

import UIKit

class TextTableViewCell: UITableViewCell, NibLoadable {

    @IBOutlet private weak var label: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
    }
    func set(text: String?) {
        label.text = text
    }
}
