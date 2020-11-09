//
//  ViewController.swift
//  MyProjectSnapKit
//
//  Created by Georhii Kasilov on 22.10.2020.
//  Copyright © 2020 Georhii Kasilov. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    private lazy var customView = CustomView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        setUpCustomView()
        customView.backgroundColor = .systemBlue
        // Do any additional setup after loading the view.
        
    }
    func setUpCustomView() {
        self.view.addSubview(customView)
        customView.snp.makeConstraints { make in
            make.bottom.top.leading.trailing.equalToSuperview()
        }
    }


}

