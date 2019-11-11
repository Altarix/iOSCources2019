//
//  OrangeViewController.swift
//  Transitions
//
//  Created by Artem Sandiryakov on 11.11.2019.
//  Copyright © 2019 Artem Sandiryakov. All rights reserved.
//

import UIKit

class OrangeViewController: UIViewController {
    
    @IBOutlet var label: UILabel!
        
    @IBAction func showBlue() {
        let storyboard = UIStoryboard(name: "Code", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "BlueViewController")
        let blueViewController = viewController as! BlueViewController
        blueViewController.textToShow = "text from orange controller"
        blueViewController.delegate = self
        show(blueViewController, sender: nil)
    }
    
}

extension OrangeViewController: BlueViewControllerDelegate {
    
    func closeWithText(_ text: String) {
        label.text = text
    }
    
}
