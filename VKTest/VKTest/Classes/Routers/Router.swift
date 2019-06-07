//
//  Router.swift
//  VKTest
//
//  Created by Ram on 07/06/2019.
//  Copyright © 2019 Arthur Narimanov. All rights reserved.
//

import UIKit
// This is singlton
class Router {
    static let shared = Router()
    
    private init() {}
    
    private let rootViewController: UIViewController = ViewController()
    
    func root(_ window: inout UIWindow?) {
        let frame = UIScreen.main.bounds
        window = UIWindow(frame: frame)
        window?.makeKeyAndVisible() // show view
        
        window?.rootViewController = rootViewController
    }
}
