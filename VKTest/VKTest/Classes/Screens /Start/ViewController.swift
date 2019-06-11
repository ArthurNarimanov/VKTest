//
//  ViewController.swift
//  VKTest
//
//  Created by Ram on 07/06/2019.
//  Copyright © 2019 Arthur Narimanov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var signInButton: UIButton!
    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var logoView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Decorator.decorate(self)
        addTargets()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    private func addTargets(){
        signInButton.addTarget(self, action: #selector(signInButtonClicked), for: .touchUpInside)
        signUpButton.addTarget(self, action: #selector(signUpButtonClicked), for: .touchUpInside)
    }
    @objc private func signInButtonClicked() {
        
    }
    @objc private func signUpButtonClicked() {
        StartRouter.shared.goToRegisterScreen(from: self)
    }
}
extension ViewController {
    fileprivate class Decorator {
        static let buttonCornerRdadius: CGFloat = 8	
        private init() {}
        static func decorate(_ vc: ViewController) {
            vc.signInButton.layer.cornerRadius = buttonCornerRdadius
            vc.signInButton.layer.borderColor = #colorLiteral(red: 0.7450980392, green: 0.7450980392, blue: 0.7450980392, alpha: 1)
        }
    }
}
