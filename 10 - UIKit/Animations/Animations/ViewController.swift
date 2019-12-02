//
//  ViewController.swift
//  Animations
//
//  Created by Evgeniy Tatyanin on 28/11/2019.
//  Copyright © 2019 Evgeniy Tatyanin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var customView: UIView!
    
    var isHiddenCustomView = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(doSomethingOnGesture(recognizer:)))
        
        tapGesture.numberOfTapsRequired = 2
        
        let rotateGesture = UIRotationGestureRecognizer(target: self, action: #selector(doSomethingOnGesture(recognizer:)))
        
        let pinchGesture = UIPinchGestureRecognizer(target: self, action: #selector(doSomethingOnGesture(recognizer:)))
        
        let panGesture = UIPanGestureRecognizer(target: self, action: #selector(doSomethingOnGesture(recognizer:)))
        
        let swipeGesture = UISwipeGestureRecognizer(target: self, action: #selector(doSomethingOnGesture(recognizer:)))
        
        swipeGesture.direction = .up
        
        //customView.addGestureRecognizer(swipeGesture)
    }
    
    @IBAction func doSomethingOnTap(_ sender: Any) {
        
        isHiddenCustomView.toggle()
        
        UIView.animate(withDuration: 5.0) {
//            self.customView.transform = CGAffineTransform(rotationAngle: .pi).translatedBy(x: 250, y: 210).scaledBy(x: 2, y: 2)
//            self.customView.transform = CGAffineTransform(rotationAngle: 100)
            self.customView.alpha = self.isHiddenCustomView ? 0 : 1
        }
    }
    
    @objc
    func doSomethingOnGesture(recognizer: UIGestureRecognizer) {
        print(recognizer.self)
    }
}

