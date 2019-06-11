//
//  StartRouter.swift
//  VKTest
//
//  Created by Ram on 11/06/2019.
//  Copyright © 2019 Arthur Narimanov. All rights reserved.
//

import UIKit

final class StartRouter {
    
    static let shared = StartRouter()
    
    private init() {}
    
    func goToRegisterScreen(from source: UIViewController) {
        let vc = RegisterViewController()
        source.navigationController?.pushViewController(vc, animated: true)
    }
}
