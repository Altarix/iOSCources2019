//
//  Cource.swift
//  Web
//
//  Created by Sergey Balalaev on 21.11.2019.
//  Copyright © 2019 Altarix. All rights reserved.
//

import Foundation

struct Cource : Codable {
    
    let event: Event
    
}

struct Event : Codable {
    
    let title: String
    
    let dayes: [Day]
    
}

struct Day : Codable {
    
    let items: [Item]
}

struct Item : Codable {
    
    let title: String
    let timeString: String
}
