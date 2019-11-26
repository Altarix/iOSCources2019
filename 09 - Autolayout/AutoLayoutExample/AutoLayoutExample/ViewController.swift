//
//  ViewController.swift
//  AutoLayoutExample
//
//  Created by Evgeniy Tatyanin on 25/11/2019.
//  Copyright © 2019 Evgeniy Tatyanin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    @IBAction func openAuthorization(_ sender: Any) {
        let controller = AuthorizationController()
        present(controller, animated: true)
    }
    

}

