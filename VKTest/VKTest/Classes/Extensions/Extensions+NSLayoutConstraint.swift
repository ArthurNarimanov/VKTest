//
//  Extensions+NSLayoutConstraint.swift
//  VKTest
//
//  Created by Ram on 11/06/2019.
//  Copyright © 2019 Arthur Narimanov. All rights reserved.
//

import UIKit

extension NSLayoutConstraint {
    // aspect ratio
    static func quadroAspect(on view: UIView) -> NSLayoutConstraint {
        return NSLayoutConstraint.init(item: view, attribute: .height, relatedBy: .equal, toItem: view, attribute: .width, multiplier: 1, constant: 0)
    }
    // settings visual format hight and widht from ","
    static func contraints(withNewVisualFormat vf: String, dict: [String: Any]) -> [NSLayoutConstraint] {
        let separatedArray = vf.split(separator: ",")
        switch separatedArray.count {
        case 1: return NSLayoutConstraint.constraints(withVisualFormat: "\(separatedArray[0])", options: [], metrics: nil, views: dict)
        case 2: return NSLayoutConstraint.constraints(withVisualFormat: "\(separatedArray[0])", options: [], metrics: nil, views: dict) +  NSLayoutConstraint.constraints(withVisualFormat: "\(separatedArray[1])", options: [], metrics: nil, views: dict)
        default:
            return NSLayoutConstraint.constraints(withVisualFormat:"\(separatedArray[0])", options: [], metrics: nil, views: dict)
        }
    }
}
