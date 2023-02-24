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
    private lazy var loginButton: UIButton = {
       let loginButton = UIButton()
        loginButton.setTitle("Login", for: .normal)
        loginButton.layer.shadowColor = UIColor.black.cgColor
        loginButton.layer.shadowOpacity = 0.3
        loginButton.layer.shadowOffset = .zero
        loginButton.layer.shadowRadius = 10
        loginButton.layer.shouldRasterize = true
        loginButton.layer.rasterizationScale = UIScreen.main.scale
        loginButton.backgroundColor = .purple
        loginButton.setTitleColor(.white, for: .normal)
        loginButton.layer.cornerRadius = 25
        return loginButton
    }()
    private lazy var forgotPasswordButton: UIButton = {
       let forgotPasswordButton = UIButton()
        forgotPasswordButton.setTitle("Forgot your password?", for: .normal)
        forgotPasswordButton.layer.shadowColor = UIColor.black.cgColor
        forgotPasswordButton.layer.shadowOpacity = 0.3
        forgotPasswordButton.layer.shadowOffset = .zero
        forgotPasswordButton.layer.shadowRadius = 10
        forgotPasswordButton.layer.shouldRasterize = true
        forgotPasswordButton.layer.rasterizationScale = UIScreen.main.scale
        forgotPasswordButton.setTitleColor(.white, for: .normal)
        forgotPasswordButton.titleLabel?.font = .systemFont(ofSize: 10)
        return forgotPasswordButton
    }()
    private lazy var view1: UIView = {
       let view1 = UIView()
        view1.backgroundColor = .gray
        return view1
    }()
    private lazy var connectLabel: UILabel = {
        let connectLabel = UILabel()
        connectLabel.text = "or connect with"
        connectLabel.textColor = .white
        connectLabel.font = .systemFont(ofSize: 15)
        return connectLabel
    }()
    private lazy var view2: UIView = {
       let view2 = UIView()
        view2.backgroundColor = .gray
        return view2
    }()
    private lazy var facebookButton: UIButton = {
       let facebookButton = UIButton()
        facebookButton.setTitle("Facebook", for: .normal)
        facebookButton.layer.shadowColor = UIColor.black.cgColor
        facebookButton.layer.shadowOpacity = 0.3
        facebookButton.layer.shadowOffset = .zero
        facebookButton.layer.shadowRadius = 10
        facebookButton.layer.shouldRasterize = true
        facebookButton.layer.rasterizationScale = UIScreen.main.scale
        facebookButton.titleLabel?.font = .systemFont(ofSize: 10)
        facebookButton.backgroundColor = .blue
        facebookButton.setTitleColor(.white, for: .normal)
        facebookButton.layer.cornerRadius = 10
        return facebookButton
    }()
    private lazy var twitterButton: UIButton = {
       let twitterButton = UIButton()
         twitterButton.setTitle("Twitter", for: .normal)
         twitterButton.layer.shadowColor = UIColor.black.cgColor
         twitterButton.layer.shadowOpacity = 0.3
         twitterButton.layer.shadowOffset = .zero
         twitterButton.layer.shadowRadius = 10
         twitterButton.layer.shouldRasterize = true
         twitterButton.layer.rasterizationScale = UIScreen.main.scale
         twitterButton.titleLabel?.font = .systemFont(ofSize: 10)
         twitterButton.backgroundColor = .systemBlue
         twitterButton.setTitleColor(.white, for: .normal)
         twitterButton.layer.cornerRadius = 10
        return twitterButton
    }()
    private lazy var facebookView: UIImageView = {
       let facebookView = UIImageView(frame: CGRect(x: 10, y: 5, width: 20, height: 20))
        facebookView.image = UIImage(named: "facebook")
        return facebookView
    }()
    private lazy var twitterView: UIImageView = {
       let twitterView = UIImageView(frame: CGRect(x: 10, y: 5, width: 20, height: 20))
        twitterView.image = UIImage(named: "twitter")
        return twitterView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupHierarchy()
        setupLayout()
    }
    private func setupHierarchy() {
        let subviews = [viewBackgroundImage,loginLabel,usernameTextField,passwordTextField,loginButton,
                        forgotPasswordButton,view1,connectLabel,view2,facebookButton,facebookView,
                        twitterButton,twitterView]
        subviews.forEach { view.addSubview($0) }
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
            passwordTextField.top.equalTo(usernameTextField.snp.bottom).offset(view.frame.height*0.0352)
            passwordTextField.left.equalTo(view.snp.left).offset(view.frame.width*0.152)
        }
        loginButton.snp.makeConstraints { loginButton in
            loginButton.centerX.equalTo(view)
            loginButton.height.equalTo(view.frame.height*0.058)
            loginButton.top.equalTo(passwordTextField.snp.bottom).offset(view.frame.height*0.0704)
            loginButton.width.equalTo(passwordTextField)
        }
        forgotPasswordButton.snp.makeConstraints { forgotPasswordButton in
            forgotPasswordButton.centerX.equalTo(view)
            forgotPasswordButton.top.equalTo(loginButton.snp.bottom).offset(view.frame.height*0.006)
        }
        view1.snp.makeConstraints { view1 in
            view1.centerX.equalTo(view).offset(view.frame.width/2*0.509)
            view1.height.equalTo(1)
            view1.width.equalTo(view.frame.width*0.178)
            view1.bottom.equalTo(view).inset(view.frame.height*0.242)
        }
        connectLabel.snp.makeConstraints { connectLabel in
            connectLabel.centerX.equalTo(view)
            connectLabel.bottom.equalTo(view).inset(view.frame.height*0.235)
        }
        view2.snp.makeConstraints { view2 in
            view2.centerX.equalTo(view).offset(-view.frame.width/2*0.509)
            view2.height.equalTo(1)
            view2.width.equalTo(view.frame.width*0.178)
            view2.bottom.equalTo(view).inset(view.frame.height*0.242)
            print(view.frame.width)
            print(view.frame.height)
        }
        facebookButton.snp.makeConstraints { facebookButton in
            facebookButton.centerX.equalTo(view).offset(-view.frame.width/2*0.407)
            facebookButton.width.equalTo(view.frame.width*0.381)
            facebookButton.height.equalTo(view.frame.height*0.035)
            facebookButton.top.equalTo(connectLabel.snp.bottom).offset(view.frame.height*0.017)
        }
        twitterButton.snp.makeConstraints { twitterButton in
            twitterButton.centerX.equalTo(view).offset(view.frame.width/2*0.407)
            twitterButton.width.equalTo(view.frame.width*0.381)
            twitterButton.height.equalTo(view.frame.height*0.035)
            twitterButton.top.equalTo(connectLabel.snp.bottom).offset(view.frame.height*0.017)
        }
        facebookView.snp.makeConstraints { facebookView in
            facebookView.centerX.equalTo(view).offset(-view.frame.width/2*0.636)
            facebookView.top.equalTo(connectLabel.snp.bottom).offset(view.frame.height*0.025)
            facebookView.width.equalTo(15)
            facebookView.height.equalTo(15)
        }
        twitterView.snp.makeConstraints { twitterView in
            twitterView.centerX.equalTo(view).offset(view.frame.width/2*0.203)
            twitterView.top.equalTo(connectLabel.snp.bottom).offset(view.frame.height*0.025)
            twitterView.width.equalTo(15)
            twitterView.height.equalTo(15)
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
