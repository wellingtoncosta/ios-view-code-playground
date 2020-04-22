//
//  MainScreen.swift
//  UsingSnapKit
//
//  Created by Wellington Pereira on 22/04/20.
//  Copyright © 2020 Wellington Pereira. All rights reserved.
//

import UIKit
import SnapKit

final class MainScreen : UIView {
    
    lazy var label: UILabel = {
        let label = UILabel(frame: .zero)
        
        label.textColor = .white
        
        label.text = "Hello! :)"
        
        return label
    }()
    
    lazy var button: UIButton = {
        let button = UIButton(frame: .zero)
        
        button.backgroundColor = .red
        
        button.setTitle("Fetch", for: .normal)
        
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

extension MainScreen: CustomView {
    func buildViewHierarchy() {
        addSubview(label)
        addSubview(button)
    }
    
    func setupConstraints() {
        label.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview()
        }
        
        button.snp.makeConstraints { make in
            make.height.equalTo(50)
            make.left.equalToSuperview().offset(16)
            make.right.equalToSuperview().inset(16) //same as offset(-16)
            make.bottom.equalToSuperview().inset(16) //same as offset(-16)
        }
    }
    
    func setupAdditionalConfiguration() {
        backgroundColor = .darkGray
    }
    
}
