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
    private let label = UILabel()
    
    override func didMoveToSuperview() {
        super.didMoveToSuperview()
        addStackView()
        addPlusView()
        addLabel()
    }
    // add label in stackView, settings color and font and font size
    private func addLabel() {
        label.text = "photo"
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = #colorLiteral(red: 0.2745098039, green: 0.5019607843, blue: 0.7607843137, alpha: 1)
        stackView.addArrangedSubview(label)
    }
    
    // coloring plus image and add plus in stackView
    private func addPlusView() {
        pluseView.contentMode = .scaleAspectFit
        pluseView.tintColor = #colorLiteral(red: 0.2745098039, green: 0.5019607843, blue: 0.7607843137, alpha: 1)
        pluseView.image = UIImage(named: "add")
        
        stackView.addArrangedSubview(pluseView)
        
        pluseView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.35).isActive = true
        pluseView.widthAnchor.constraint(equalTo: pluseView.heightAnchor).isActive = true
    }
    
    // add stackview in View
    private func addStackView() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        // setting stack's elements
        stackView.distribution = .fillProportionally
        stackView.alignment = .center
        stackView.axis = .vertical
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
