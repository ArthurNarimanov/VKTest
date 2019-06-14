//
//  Extensions+UIView.swift
//  VKTest
//
//  Created by Ram on 11/06/2019.
//  Copyright © 2019 Arthur Narimanov. All rights reserved.
//

import UIKit

extension UIView {
    func round() {
        // speed version
        let temp: CGFloat = frame.height / 2
        layer.cornerRadius = temp
        // none speed version
//        layer.cornerRadius = frame.height / 2
    }
}
