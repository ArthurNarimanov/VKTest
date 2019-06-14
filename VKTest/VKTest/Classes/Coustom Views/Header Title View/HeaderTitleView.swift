//
//  HeaderTitleView.swift
//  VKTest
//
//  Created by Ram on 14/06/2019.
//  Copyright © 2019 Arthur Narimanov. All rights reserved.
//

import UIKit

class HeaderTitleView: UIView, NibLoadable {
    @IBOutlet private weak var label: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func set(title: String) {
        label.text = title
    }
}
