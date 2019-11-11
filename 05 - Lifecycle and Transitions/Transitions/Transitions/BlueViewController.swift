//
//  BlueViewController.swift
//  Transitions
//
//  Created by Artem Sandiryakov on 11.11.2019.
//  Copyright © 2019 Artem Sandiryakov. All rights reserved.
//

import UIKit

protocol BlueViewControllerDelegate: class {
    func closeWithText(_ text: String)
}

class BlueViewController: UIViewController {
    
    weak var delegate: BlueViewControllerDelegate?
    
    var textToShow: String?
    
    @IBAction func showOrange() {
        delegate?.closeWithText("text from blue controller")
        navigationController?.popViewController(animated: true)
    }
    
}
