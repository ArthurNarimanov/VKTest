//
//  PhotoView.swift
//  VKTest
//
//  Created by Ram on 11/06/2019.
//  Copyright © 2019 Arthur Narimanov. All rights reserved.
//

import UIKit

class PhotoView: UIView {
    
    private let stackView = UIStackView()
    private let pluseView = UIImageView()
    
    
    override func didMoveToSuperview() {
        super.didMoveToSuperview()
        addStackView()
        addPlusView()
    }
    // coloring plus image
    private func addPlusView() {
        pluseView.contentMode = .scaleAspectFit
        pluseView.tintColor = #colorLiteral(red: 0.2745098039, green: 0.5019607843, blue: 0.7607843137, alpha: 1)
        pluseView.image = #imageLiteral(resourceName: "add (1).png")
        stackView.addArrangedSubview(pluseView)
    }
    
    // add stackview in View
    private func addStackView() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        // setting stack's elements
        stackView.distribution = .equalCentering
        stackView.alignment = .center

        addSubview(stackView)
        let constraints = NSLayoutConstraint.contraints(withNewVisualFormat: "H:|[stackView]|,V:|[stackView]|", dict: ["stackView": stackView])
        addConstraints(constraints)
        
       /* //
        stackView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        stackView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        stackView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        stackView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        */
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        
        Decorator.layoutSubviews(self)
    }
}

extension PhotoView {
    fileprivate final class Decorator {
        static func decorate(_ view: PhotoView) {
            view.layer.borderColor = #colorLiteral(red: 0.7450980392, green: 0.7450980392, blue: 0.7450980392, alpha: 1)
            view.layer.borderWidth = 1
        }
        
        static func layoutSubviews(_ view: PhotoView) {
            view.round()
        }
    }
}
