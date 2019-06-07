//
//  ViewController.swift
//  VKTest
//
//  Created by Ram on 07/06/2019.
//  Copyright © 2019 Arthur Narimanov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var logoView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Decorator.decorate(self)
    }
}
extension ViewController {
    fileprivate class Decorator {
        static let buttonCornerRdadius: CGFloat = 8	
        private init() {}
        static func decorate(_ vc: ViewController) {
            vc.registerButton.layer.cornerRadius = buttonCornerRdadius
            vc.registerButton.layer.borderColor = #colorLiteral(red: 0.7450980392, green: 0.7450980392, blue: 0.7450980392, alpha: 1)
        }
    }
}
