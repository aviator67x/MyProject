//
//  UIView+SnapKit.swift
//  MyProjectScrollView
//
//  Created by Georhii Kasilov on 02.11.2020.
//  Copyright © 2020 Georhii Kasilov. All rights reserved.
//

import SnapKit
import UIKit

public extension UIView {
    func layout(using closure: (ConstraintMaker) -> Void) {
        translatesAutoresizingMaskIntoConstraints = false
        snp.makeConstraints(closure)
    }

    func addSubview(_ view: UIView, using closure: (ConstraintMaker) -> Void) {
        addSubview(view)
        view.layout(using: closure)
    }
}
