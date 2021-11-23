//
//  Person.swift
//  ContactListApp
//
//  Created by Дмитрий Межевич on 23.11.21.
//

import Foundation

struct Person {
    
    var name: String
    var number: String
    var surname: String?
    var imageData: Data?
    private(set) var date: Date
    
    init(name: String, number: String, image: Data? = nil) {
        self.name = name
        self.number = number
        self.imageData = image
        date = Date()
    }
    
    init(name: String, number: String, surname: String, image: Data? = nil) {
        self.name = name
        self.number = number
        self.surname = surname
        self.imageData = image
        date = Date()
    }
}
