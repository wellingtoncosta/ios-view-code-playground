//
//  CodeView.swift
//  InitialSteps
//
//  Created by Wellington Pereira on 21/04/20.
//  Copyright © 2020 Wellington Pereira. All rights reserved.
//

protocol CustomView {
    func buildViewHierarchy()
    func setupConstraints()
    func setupAdditionalConfiguration()
    func setupView()
}

extension CustomView {
    func setupView() {
        buildViewHierarchy()
        setupConstraints()
        setupAdditionalConfiguration()
    }
}

