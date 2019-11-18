//
//  ViewController.swift
//  ImageViewer
//
//  Created by Artem Sandiryakov on 18.11.2019.
//  Copyright © 2019 Artem Sandiryakov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var activityIndicator: UIActivityIndicatorView!
    
    @IBAction func showImage() {
        activityIndicator.startAnimating()
        let url = URL(string: "https://www.montereyairport.com/sites/main/files/main-images/camera_lense_0.jpeg")!
        
        DispatchQueue.global(qos: .userInitiated).async {
            if let data = try? Data(contentsOf: url), let image = UIImage(data: data) {
                DispatchQueue.main.async {
                    self.imageView.image = image
                    self.activityIndicator.stopAnimating()
                }
            }
        }
    }
    
}
