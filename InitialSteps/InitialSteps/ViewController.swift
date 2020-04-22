//
//  ViewController.swift
//  InitialSteps
//
//  Created by Wellington Pereira on 21/04/20.
//  Copyright © 2020 Wellington Pereira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let mainScreen = MainScreen()
    
    override func loadView() {
        self.view = mainScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

