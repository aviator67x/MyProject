//
//  ScrollViewController.swift
//  MyProjectScrollView
//
//  Created by Georhii Kasilov on 01.11.2020.
//  Copyright © 2020 Georhii Kasilov. All rights reserved.
//

import UIKit
import SnapKit

final class ScrollViewController: UIViewController {
    
    
    //MARK: - View Controller Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        setupViews()
    }
    //    MARK: - Views
    
    private lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.delegate = self
        scrollView.minimumZoomScale = 0.25
        scrollView.maximumZoomScale = 2
        return scrollView
    }()
    
    private lazy var textLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.text = """
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed at condimentum sem. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aliquam a est est. Pellentesque varius turpis blandit tempor suscipit. Maecenas at lectus feugiat, imperdiet augue nec, ornare turpis. Vivamus at justo id enim suscipit molestie sit amet sed nisl. Cras ullamcorper tincidunt risus, id accumsan lectus dignissim ut. In vitae consequat turpis, vel mattis dui. Sed eu eleifend augue.
        """
        return label
    }()
    
    let containerView = UIView()
}

//MARK: - Setup Views

extension ScrollViewController {
    private func setupViews() {
        view.addSubview(scrollView) {
            $0.top.bottom.leading.trailing.equalToSuperview()
        }
        
        scrollView.addSubview(containerView) {
            $0.top.bottom.leading.trailing.centerX.equalToSuperview()
        }
        
        containerView.addSubview(textLabel) {
            $0.top.bottom.leading.trailing.equalToSuperview()
        }
    }
}

//MARK: - UIScrollViewDelegate

extension ScrollViewController: UIScrollViewDelegate {
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return textLabel
    }
}
