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

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupHierarchy()
        setupLayout()
    }
    private func setupHierarchy() {
        view.addSubview(viewBackgroundImage)
    }
    private func setupLayout() {
        
    }
    


}

