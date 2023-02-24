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

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupHierarchy()
        setupLayout()
    }
    private func setupHierarchy() {
        view.addSubview(viewBackgroundImage)
        view.addSubview(loginLabel)
    }
    private func setupLayout() {
        loginLabel.snp.makeConstraints { loginLabel in
            loginLabel.centerX.equalTo(view)
            print(view.frame.height)
            print(view.frame.height*0.117)
            print(view.frame.width)
            loginLabel.top.equalTo(view).offset(view.frame.height*0.117)
        }
    }
    


}

