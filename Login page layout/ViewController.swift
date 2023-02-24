//
//  ViewController.swift
//  Login page layout
//
//  Created by Adlet Zhantassov on 24.02.2023.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    private lazy var viewBackgroundImage: UIImageView = {
       let imageName = "background"
       let image = UIImage(named: imageName)
       let imageView = UIImageView(image: image)
       imageView.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height)
       return imageView
    }()
    private lazy var loginLabel: UILabel = {
       let loginLabel = UILabel()
        loginLabel.text = "Login"
        loginLabel.textColor = .white
        loginLabel.font = UIFont(name: "Futura", size: CGFloat(30))
        return loginLabel
    }()
    private lazy var usernameTextField: UITextField = {
       let usernameTextField = UITextField()
        usernameTextField.placeholder = "keanureeves01" + " "
        usernameTextField.textAlignment = .center
        usernameTextField.setLeftIcon(image: UIImage(systemName: "person.fill")!)
        usernameTextField.setRightIcon(image: UIImage(systemName: "checkmark.circle.fill")!)
        usernameTextField.backgroundColor = .white
        usernameTextField.textColor = .black
        usernameTextField.layer.cornerRadius = 25
        return usernameTextField
    }()
    private lazy var passwordTextField: UITextField = {
       let passwordTextField = UITextField()
        passwordTextField.placeholder = "password"
        passwordTextField.textAlignment = .center
        passwordTextField.setLeftIcon(image: UIImage(systemName: "lock.fill")!)
        passwordTextField.backgroundColor = .white
        passwordTextField.textColor = .black
        passwordTextField.layer.cornerRadius = 25
        return passwordTextField
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupHierarchy()
        setupLayout()
    }
    private func setupHierarchy() {
        view.addSubview(viewBackgroundImage)
        view.addSubview(loginLabel)
        view.addSubview(usernameTextField)
        view.addSubview(passwordTextField)
    }
    private func setupLayout() {
        
        loginLabel.snp.makeConstraints { loginLabel in
            loginLabel.centerX.equalTo(view)
            loginLabel.top.equalTo(view).offset(view.frame.height*0.117)
        }
        usernameTextField.snp.makeConstraints { usernameTextField in
            usernameTextField.centerX.equalTo(view)
            usernameTextField.height.equalTo(view.frame.height*0.058)
            usernameTextField.top.equalTo(loginLabel.snp.bottom).offset(view.frame.height*0.0704)
            usernameTextField.left.equalTo(view.snp.left).offset(view.frame.width*0.152)
        }
        passwordTextField.snp.makeConstraints { passwordTextField in
            passwordTextField.centerX.equalTo(view)
            passwordTextField.height.equalTo(view.frame.height*0.058)
            passwordTextField.top.equalTo(usernameTextField.snp.bottom).offset(view.frame.height*0.0704)
            passwordTextField.left.equalTo(view.snp.left).offset(view.frame.width*0.152)
        }
    }
}

extension UITextField {
    func setLeftIcon(image: UIImage) {
        let iconView = UIImageView(frame: CGRect(x: 10, y: 5, width: 20, height: 20))
        iconView.image = image
        let iconContainerView: UIView = UIView(frame: CGRect(x: 20, y: 0, width: 30, height: 30))
        iconContainerView.addSubview(iconView)
        leftView = iconContainerView
        leftViewMode = .always
    }
    func setRightIcon(image: UIImage) {
        let iconView = UIImageView(frame: CGRect(x: 0, y: 5, width: 20, height: 20))
        iconView.image = image
        let iconContainerView: UIView = UIView(frame: CGRect(x: 20, y: 0, width: 30, height: 30))
        iconContainerView.addSubview(iconView)
        rightView = iconContainerView
        rightViewMode = .always
    }
}
