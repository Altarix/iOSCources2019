//
//  TextField.swift
//  DB
//
//  Created by Sergey Balalaev on 02.12.2019.
//  Copyright © 2019 Altarix. All rights reserved.
//

import RealmSwift

class TextField : Object {
    @objc dynamic var field1: String = ""
    @objc dynamic var field2: String = ""
    @objc dynamic var field3: String = ""
    @objc dynamic var field4: String = ""
    
    // Организация связи один ко многим
    let labels = List<TextFieldLabel>()
    
    override class func primaryKey() -> String? {
        return "field1"
    }

    // field1 в первичном ключе, это круче индексов
    override class func indexedProperties() -> [String] {
        return ["field2"]
    }

    
}

// Дочерняя сущность
class TextFieldLabel : Object {
    @objc dynamic var id: String
    @objc dynamic var text: String
    
    // Связь с родителем: обязательно Optional!
    @objc dynamic var parent: TextField?
    
    override class func primaryKey() -> String? {
        return "id"
    }
    
    required init(text: String, parent: TextField){
        id = UUID().uuidString
        self.text = text
        self.parent = parent
        super.init()
        parent.labels.append(self)
    }
    
    required init() {
        id = UUID().uuidString
        text = ""
        super.init()
    }
    
}
