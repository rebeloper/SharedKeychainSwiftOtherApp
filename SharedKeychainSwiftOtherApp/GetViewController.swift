//
//  GetViewController.swift
//  SharedKeychainSwiftOtherApp
//
//  Created by Alex Nagy on 16/12/2018.
//  Copyright © 2018 Alex Nagy. All rights reserved.
//

import UIKit
import TinyConstraints

class GetViewController: UIViewController {
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Name: N/A"
        return label
    }()
    
    lazy var getFromKeychainButton: UIButton = {
        var button = UIButton(type: .system)
        button.setTitle("Get", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        button.backgroundColor = #colorLiteral(red: 0.8392156863, green: 0.1882352941, blue: 0.1921568627, alpha: 1)
        button.layer.cornerRadius = 8
        button.layer.masksToBounds = true
        button.addTarget(self, action: #selector(getFromKeychainButtonTapped), for: .touchUpInside)
        return button
    }()
    
    @objc fileprivate func getFromKeychainButtonTapped() {
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setupViews()
    }

    fileprivate func setupViews() {
        view.backgroundColor = #colorLiteral(red: 0.8745098039, green: 0.9019607843, blue: 0.9137254902, alpha: 1)
        
        view.addSubview(nameLabel)
        view.addSubview(getFromKeychainButton)
        
        nameLabel.edgesToSuperview(excluding: .bottom, insets: .top(48) + .left(12) + .right(12), usingSafeArea: true)
        nameLabel.width(50)
        
        getFromKeychainButton.topToBottom(of: nameLabel, offset: 12)
        getFromKeychainButton.leftToSuperview(offset: 12, usingSafeArea: true)
        getFromKeychainButton.rightToSuperview(offset: -12, usingSafeArea: true)
        getFromKeychainButton.height(50)
    }

}

