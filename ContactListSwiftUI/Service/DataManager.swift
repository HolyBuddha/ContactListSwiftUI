//
//  DataManager.swift
//  ContactList
//
//  Created by Vladimir Izmaylov on 08.09.2021.
//

import Foundation

class DataManager {
    
    static let shared = DataManager()
    
    let names = ["Steve", "John", "Bill", "Jessica", "Barbara", "Rose"]
    let surnames = ["Smith", "Davis", "Johnson", "Miller", "Wilson", "Stone"]
    let numbers = [
        "899-355-566", "899-777-566", "899-355-988", "899-311-988",
        "899-444-988", "899-000-000"
    ]
    let emails = [
        "space@mail.ru", "groovy@ya.ru", "popit@rambler.ru",
        "awesome@inbox.ru", "bigboss@bk.ru", "mini@mail.ru"
    ]
    
    private init() {}
}


