//
//  ViewController.swift
//  TextCopy
//
//  Created by Artem Sandiryakov on 07.11.2019.
//  Copyright © 2019 Artem Sandiryakov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var textField: UITextField!
    @IBOutlet var label: UILabel!
    
    @IBAction func copyText(_ sender: UIButton) {
        label.text = textField.text
    }
    
}

