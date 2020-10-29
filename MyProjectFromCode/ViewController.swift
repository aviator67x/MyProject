//
//  ViewController.swift
//  MyProjectFromCode
//
//  Created by Georhii Kasilov on 13.10.2020.
//  Copyright © 2020 Georhii Kasilov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private lazy var customView = CustomView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .darkGray
        setupViewsUsingNSLayoutAnchor()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        //        setupViews()
    }
}

// MARK: - Setup Views
extension ViewController {
    private func setupViewsUsingNSLayoutAnchor() {
        self.view.addSubview(customView)
        
        customView.translatesAutoresizingMaskIntoConstraints = false
        customView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0).isActive = true
        customView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0).isActive = true
        customView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
        customView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: 0).isActive = true
    }
    
    private func setupViewsUsingNSLayoutConstraint() {
        self.view.addSubview(customView)
        
        customView.translatesAutoresizingMaskIntoConstraints = false
        
        let leading = NSLayoutConstraint(item: customView,
                                         attribute: NSLayoutConstraint.Attribute.leading,
                                         relatedBy: NSLayoutConstraint.Relation.equal,
                                         toItem: self.view,
                                         attribute: NSLayoutConstraint.Attribute.leading,
                                         multiplier: 1,
                                         constant: 0)
        let trailing = NSLayoutConstraint(item: customView,
                                          attribute: NSLayoutConstraint.Attribute.trailing,
                                          relatedBy: NSLayoutConstraint.Relation.equal,
                                          toItem: self.view,
                                          attribute: NSLayoutConstraint.Attribute.trailing,
                                          multiplier: 1,
                                          constant: 0)
        let top = NSLayoutConstraint(item: customView,
                                     attribute: NSLayoutConstraint.Attribute.top,
                                     relatedBy: NSLayoutConstraint.Relation.equal,
                                     toItem: self.view,
                                     attribute: NSLayoutConstraint.Attribute.top,
                                     multiplier: 1,
                                     constant: 0)
        let bottom = NSLayoutConstraint(item: customView,
                                        attribute: NSLayoutConstraint.Attribute.bottom,
                                        relatedBy: NSLayoutConstraint.Relation.equal,
                                        toItem: self.view,
                                        attribute: NSLayoutConstraint.Attribute.bottom,
                                        multiplier: 1,
                                        constant: 0)
        NSLayoutConstraint.activate([leading, trailing, top, bottom])
    }
}


