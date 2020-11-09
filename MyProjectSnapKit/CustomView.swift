//
//  CustomView.swift
//  MyProjectSnapKit
//
//  Created by Georhii Kasilov on 22.10.2020.
//  Copyright © 2020 Georhii Kasilov. All rights reserved.
//

import UIKit
import SnapKit


final class CustomView: UIView {
    //    MARK: - Lifecycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    //    MARK: - Views
    private lazy var labelLorenIpsum: UILabel = {
        let label = UILabel()
        label.text = "Lorem Ipsum"
        label.font = UIFont.boldSystemFont(ofSize: 34)
        label.textColor = .white
        label.textAlignment = .center
        return label
    }()
    
    private lazy var textFieldUsername: UITextField = {
        let textField = UITextField()
        textField.textAlignment = .center
        textField.attributedPlaceholder = NSAttributedString(string: "Username", attributes: [
        .foregroundColor: UIColor.white
        ])
        textField.textColor = .white
        textField.backgroundColor = .dodgerBlue
        textField.layer.cornerRadius = 30
        return textField
    }()
    
    private lazy var textFieldPassword: UITextField = {
        let textField = UITextField()
        textField.textAlignment = .center
        textField.attributedPlaceholder = NSAttributedString(string: "Password", attributes: [
            .foregroundColor: UIColor.white
        ])
        textField.textColor = .white
        textField.backgroundColor = .dodgerBlue
        textField.layer.cornerRadius = 30
        return textField
    }()
    
    private lazy var labelForgotYourPassword: UILabel = {
        let label = UILabel()
        label.text = "Forgot Your Password"
        label.font = UIFont.systemFont(ofSize: 15)
        label.textColor = .white
        label.textAlignment = .center
        return label
    }()
    
    private lazy var buttonSignIn: UIButton = {
        let button = UIButton()
        button.setTitle("Sign In", for: .normal)
        button.backgroundColor = .dodgerBlue
        button.layer.cornerRadius = 30
        button.layer.borderWidth = 1
        button.layer.borderColor = .init(srgbRed: 255/255, green: 255/255, blue: 255/255, alpha: 1)
        button.titleLabel?.textColor = .white
        return button
    }()
    
    
    lazy var stackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [textFieldUsername, textFieldPassword])
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.distribution = .fillEqually
        stackView.spacing = 10
        
        return stackView
    }()
}
// MARK: - Setup veiws
extension CustomView {
    
    private func setupViews() {
        backgroundColor = .white
        addSubview(stackView)
        addSubview(labelLorenIpsum)
        addSubview(labelForgotYourPassword)
        addSubview(buttonSignIn)
        
        stackView.snp.makeConstraints { make in
            make.centerX.centerY.equalToSuperview()
            make.leading.trailing.equalToSuperview().inset(10)
        }
        
        labelLorenIpsum.snp.makeConstraints { make in
            make.top.equalTo(200)
            make.leading.trailing.equalToSuperview().inset(10)
            make.height.equalTo(40)
        }
        
        textFieldUsername.snp.makeConstraints { make in
//            make.top.equalTo(stackView.snp.top)
            make.leading.trailing.equalToSuperview().inset(20)
            make.height.equalTo(60)
        }
        
        textFieldPassword.snp.makeConstraints { make in
            make.height.equalTo(60)
            make.leading.trailing.equalToSuperview().inset(20)
        }
        
        labelForgotYourPassword.snp.makeConstraints { make in
            make.top.equalTo(stackView.snp.bottom).offset(5)
            make.leading.trailing.equalToSuperview().inset(30)
        }
        
        buttonSignIn.snp.makeConstraints { make in
            make.height.equalTo(60)
            make.top.equalTo(labelForgotYourPassword.snp.bottom).offset(30)
            make.leading.trailing.equalToSuperview().inset(30)

        }
        
    }
}

