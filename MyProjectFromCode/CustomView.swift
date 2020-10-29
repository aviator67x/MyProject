//
//  CustomView.swift
//  MyProjectFromCode
//
//  Created by Georhii Kasilov on 13.10.2020.
//  Copyright © 2020 Georhii Kasilov. All rights reserved.
//

import UIKit

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
    private lazy var backgroundImage: UIImageView = {
           let backgroundImage = UIImageView()
           backgroundImage.contentMode = .scaleToFill
           backgroundImage.image = UIImage(named: "Background")
           backgroundImage.translatesAutoresizingMaskIntoConstraints = false
           return backgroundImage
       }()
       
    private lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleToFill
        imageView.image = UIImage(named: "hood")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private lazy var createAccountLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 24)
        label.textAlignment = .center
        label.text = "Create Account"
        return label
    }()
    
    private lazy var termsAndConditionsLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 16)
        label.textAlignment = .center
        label.text = "Terms & Conditions"
        return label
    }()
    
    private lazy var ifYouAlredyHaveAccountLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 16)
        label.textAlignment = .center
        label.layer.cornerRadius = 12
        label.text = "If You Already Have Account"
        return label
    }()
    
    private lazy var nameTextField: TextField = {
        let textField = TextField()
        textField.textInsets = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 0)
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "Name"
        textField.textColor = .black
        textField.backgroundColor = .cyan
        textField.layer.cornerRadius = 18
        return textField
    }()
    
    private lazy var emailTextField: UITextField = {
        let textField = UITextField()
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: 0))
        textField.leftView = paddingView
        textField.leftViewMode = .always
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "Email"
        textField.textColor = .black
        textField.backgroundColor = .cyan
        textField.layer.cornerRadius = 18
        return textField
    }()
    
    private lazy var passwordTextField: UITextField = {
        let textField = UITextField()
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: 0))
        textField.leftView = paddingView
        textField.leftViewMode = .always
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "Password"
        textField.textColor = .black
        textField.backgroundColor = .cyan
        textField.layer.cornerRadius = 18
        textField.isSecureTextEntry = true
        return textField
    }()
    
    private lazy var stackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [nameTextField, emailTextField, passwordTextField])
        stackView.spacing = 10
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    private lazy var createButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Create", for: .normal)
        button.backgroundColor = .orange
        button.layer.cornerRadius = 18
        return button
    }()
    
    private lazy var loginButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Login", for: .normal)
        button.backgroundColor = .blue
        button.layer.cornerRadius = 18
           return button
       }()
}

 private lazy var emptyButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Login", for: .normal)
        button.backgroundColor = .blue
        button.layer.cornerRadius = 18
           return button
       }()
}


// MARK: - Setup veiws
extension CustomView {
    private func setupViews() {
        addSubview(backgroundImage)
        backgroundColor = .white
        addSubview(imageView)
        addSubview(createAccountLabel)
        addSubview(nameTextField)
        addSubview(emailTextField)
        addSubview(passwordTextField)
        addSubview(createButton)
        addSubview(termsAndConditionsLabel)
        addSubview(ifYouAlredyHaveAccountLabel)
        addSubview(loginButton)
        addSubview(stackView)
//        imageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20).isActive = true
//        imageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 20).isActive = true
        backgroundImage.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0).isActive = true
        backgroundImage.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0).isActive = true
        backgroundImage.topAnchor.constraint(equalTo: self.topAnchor, constant: 0).isActive = true
        backgroundImage.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0).isActive = true
        
        imageView.topAnchor.constraint(equalTo: topAnchor, constant: 20).isActive = true
        imageView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        imageView.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.3).isActive = true
        
        
        createAccountLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30).isActive = true
        createAccountLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30).isActive = true
        createAccountLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 5).isActive = true
        
        
        stackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30).isActive = true
        stackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30).isActive = true
        stackView.topAnchor.constraint(equalTo: createAccountLabel.bottomAnchor, constant: 150).isActive = true
        stackView.heightAnchor.constraint(equalToConstant: 120).isActive = true


        createButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30).isActive = true
        createButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30).isActive = true
        createButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 15).isActive = true


        termsAndConditionsLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30).isActive = true
       termsAndConditionsLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30).isActive = true
        termsAndConditionsLabel.topAnchor.constraint(equalTo: createButton.bottomAnchor, constant: 15).isActive = true


     ifYouAlredyHaveAccountLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30).isActive = true
        ifYouAlredyHaveAccountLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30).isActive = true
        ifYouAlredyHaveAccountLabel.bottomAnchor.constraint(equalTo: loginButton.topAnchor, constant: -5).isActive = true


        loginButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30).isActive = true
        loginButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30).isActive = true
        loginButton.topAnchor.constraint(equalTo: ifYouAlredyHaveAccountLabel.bottomAnchor, constant: 5).isActive = true
        loginButton.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10).isActive = true
        
    }
}
