//
//  ViewController.swift
//  Transitions
//
//  Created by Artem Sandiryakov on 11.11.2019.
//  Copyright © 2019 Artem Sandiryakov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var label: UILabel!

    @IBAction func showRed() {
        performSegue(withIdentifier: "showRed", sender: nil)
    }
    
    @IBAction func unwindViewController(segue: UIStoryboardSegue) {
        guard segue.identifier == "unwindToGreen" else { return }
        guard let redViewController = segue.source as? RedViewController else { return }
        label.text = redViewController.textToShow
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "showRed" else { return }
        let redViewController = segue.destination as! RedViewController
        redViewController.textToShow = "text from green controller"
    }
    
}

