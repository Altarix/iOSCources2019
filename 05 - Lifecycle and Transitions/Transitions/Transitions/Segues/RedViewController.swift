//
//  RedViewController.swift
//  Transitions
//
//  Created by Artem Sandiryakov on 11.11.2019.
//  Copyright © 2019 Artem Sandiryakov. All rights reserved.
//

import UIKit

class RedViewController: UIViewController {
    
    var textToShow: String?

    @IBOutlet var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = textToShow
    }

}
