//
//  ViewController.swift
//  ColorPicker
//
//  Created by Artem Sandiryakov on 07.11.2019.
//  Copyright © 2019 Artem Sandiryakov. All rights reserved.
//

import UIKit

class ViewController: UIViewController  {
    
    private struct Color {
        let title: String
        let color: UIColor
    }
    
    private let colors = [
        Color(title: "Red", color: UIColor.red),
        Color(title: "Green", color: UIColor.green),
        Color(title: "Blue", color: UIColor.blue),
        Color(title: "Yellow", color: UIColor.yellow)
    ]
    
    private let colorPicker: UIPickerView = UIPickerView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(colorPicker)
        colorPicker.dataSource = self
        colorPicker.delegate = self
    }
    
}

extension ViewController: UIPickerViewDataSource, UIPickerViewDelegate {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colors.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colors[row].title
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        view.backgroundColor = colors[row].color
    }
    
}
