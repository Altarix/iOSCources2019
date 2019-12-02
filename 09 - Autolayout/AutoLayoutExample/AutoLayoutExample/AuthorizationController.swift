//
//  AuthorizationController.swift
//  AutoLayoutExample
//
//  Created by Evgeniy Tatyanin on 25/11/2019.
//  Copyright © 2019 Evgeniy Tatyanin. All rights reserved.
//

import UIKit

class AuthorizationController: UIViewController {

    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var forgotPasswordLabel: UILabel!
    
    @IBOutlet var socialIcons: [UIImageView]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
        let attributedString = NSAttributedString(string: "Забыли пароль?", attributes: [
            NSAttributedString.Key.underlineStyle: NSUnderlineStyle.single.rawValue, NSAttributedString.Key.foregroundColor: UIColor.green])
        
        forgotPasswordLabel.attributedText = attributedString
        
        button.layer.cornerRadius = 3.0
        
    }
    
    @IBAction func authSocial(_ sender: Any) {
        print(123)
        guard let tapGesture = sender as? UITapGestureRecognizer else { return }
        
        print(tapGesture.view?.tag)
        
    }
    
}
