//
//  ViewController.swift
//  DB
//
//  Created by Sergey Balalaev on 02.12.2019.
//  Copyright © 2019 Altarix. All rights reserved.
//

import UIKit
import KeychainAccess
import RealmSwift

class ViewController: UIViewController {

    @IBOutlet var textField: UITextField!
    static let fnTextField = "textField"
    
    @IBOutlet var keychainTextField: UITextField!
    
    let keychain = Keychain(service: "com.text")
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Загружаем из UserDefaults
        if let value = UserDefaults.standard.string(forKey: Self.fnTextField) {
            textField.text = value
        } else {
            textField.text = ""
        }
        
        // Загружаем из Keychain
        keychainTextField.text = self.keychain[Self.fnTextField]
        
        // Загружаем из Realm
        // Обратите внимание поиск и сортировка по полям field1 и field2, значит их надо индексировать, смотрите сущность.
        if let textFieldObject = DB.shared.realm.objects(TextField.self).filter("field1 == %@", "7").sorted(byKeyPath: "field2").first
        {
            textField.text = textFieldObject.field2
        }
    }

    @IBAction func editTextField(_ sender: Any) {
        // Не вызываетя
    }
    
    @IBAction func clickSave(_ sender: Any) {
        guard let value = textField.text else {
            return
        }
        
        // Сохранение в UserDefaults, без synchronize() не запишется
        UserDefaults.standard.set(value, forKey: Self.fnTextField)
        UserDefaults.standard.synchronize()
        
        // Сохранение в Keychain
        self.keychain[Self.fnTextField] = keychainTextField.text
        
        // Сохраняем в Realm
        DB.shared.realm.beginWrite()
        let textFiledObject = TextField()
        textFiledObject.field1 = textField.text ?? ""
        textFiledObject.field2 = keychainTextField.text ?? ""
        DB.shared.realm.add(textFiledObject)
        try! DB.shared.realm.commitWrite()
        
        // Меняем первое поле, чтобы показать количество сущностей в БД Realm
        textField.text = "\( DB.shared.realm.objects(TextField.self).count)"
        
    }
}

