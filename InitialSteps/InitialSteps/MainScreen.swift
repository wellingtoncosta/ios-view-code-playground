//
//  MainScreen.swift
//  InitialSteps
//
//  Created by Wellington Pereira on 21/04/20.
//  Copyright © 2020 Wellington Pereira. All rights reserved.
//

import UIKit

protocol CustomViewSteps {
    func buildViewHierarchy()
    func setupConstraints()
    func setupAdditionalConfiguration()
    func setupView()
}

extension CustomViewSteps {
    func setupView() {
        buildViewHierarchy()
        setupConstraints()
        setupAdditionalConfiguration()
    }
}

final class MainScreen : UIView {
    
    lazy var button: UIButton = {
        let button = UIButton(frame: .zero)
        
        button.backgroundColor = .red
        
        button.setTitle("Fetch", for: .normal)
        
        // This property must be false whenever you add your own constraints, as coded below
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension MainScreen: CustomViewSteps {
    func buildViewHierarchy() {
        addSubview(button)
    }
    
    func setupConstraints() {
        // Adding a 16px margin to the left of the parent view
        button.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16).isActive = true
        
        // Adding a -16px margin to the right of the parent view
        button.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16).isActive = true
        
        // Adding a fixed height of 50px
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        // Adding a -16px margin to the bottom of the parent view
        button.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -16).isActive = true
    }
    
    func setupAdditionalConfiguration() {
        backgroundColor = .darkGray
    }
    
    
}
