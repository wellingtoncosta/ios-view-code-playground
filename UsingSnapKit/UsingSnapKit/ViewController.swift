//
//  ViewController.swift
//  UsingSnapKit
//
//  Created by Wellington Pereira on 22/04/20.
//  Copyright © 2020 Wellington Pereira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let mainScreen = MainScreen()
    
    override func loadView() {
        self.view = mainScreen
    }

}
