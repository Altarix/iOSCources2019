//
//  ViewController.swift
//  BincoinTicker
//
//  Created by Artem Sandiryakov on 18.11.2019.
//  Copyright © 2019 Artem Sandiryakov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var activityIndicator: UIActivityIndicatorView!
    @IBOutlet var label: UILabel!
    
    @IBAction func getRate() {
        activityIndicator.startAnimating()
        
        let url = URL(string: "https://blockchain.info/ticker")!
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data else { return }
            
            guard let json = try? JSONSerialization.jsonObject(with: data) as? [String: Any] else {
                return
            }
            
            guard let rubJSON = json["RUB"] as? [String: Any] else { return }
            guard let rate = rubJSON["last"] as? Double else { return }
            
            DispatchQueue.main.async {
                self.label.text = String(rate)
                self.activityIndicator.stopAnimating()                
            }
            
        }.resume()
    }

}

