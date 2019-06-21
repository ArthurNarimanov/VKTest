//
//  infoUserTableViewCell.swift
//  VKTest
//
//  Created by Ram on 11/06/2019.
//  Copyright © 2019 Arthur Narimanov. All rights reserved.
//

import UIKit

class InfoUserTableViewCell: UITableViewCell, StaticCellProtocol {

    @IBOutlet private weak var backgroundFieldsView: UIView!

    static var height: CGFloat {
        return 100
    }
    

    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
        Decorator.decorate(self)
    }
}

extension InfoUserTableViewCell {
    fileprivate final class Decorator {
        static func decorate(_ cell: InfoUserTableViewCell) {
            cell.selectionStyle = .none
            cell.backgroundColor = #colorLiteral(red: 0.9450980392, green: 0.9450980392, blue: 0.9450980392, alpha: 1)
            cell.backgroundFieldsView.layer.borderColor = #colorLiteral(red: 0.7450980392, green: 0.7450980392, blue: 0.7450980392, alpha: 1)
            cell.backgroundFieldsView.layer.borderWidth = 0.5
        }
    }
}
