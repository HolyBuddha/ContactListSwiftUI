//
//  Person.swift
//  ContactList
//
//  Created by Vladimir Izmaylov on 08.09.2021.
//

import Foundation

class Person: Identifiable {
    let name: String
    let surname: String
    let number: String
    let email: String
    var fullName: String { "\(name) \(surname)" }
    
    init(name: String, surname: String, number: String, email: String) {
        self.name = name
        self.surname = surname
        self.number = number
        self.email = email
    }
    
    
    static func getContacts() -> [Person] {
        
        let dataManager = DataManager.shared
        
        var contactFromData: [Person] = []
        
        let names = dataManager.names.shuffled()
        let surnames = dataManager.surnames.shuffled()
        let numbers = dataManager.numbers.shuffled()
        let emails = dataManager.emails.shuffled()
        
        
        for index in 0..<dataManager.names.count {
            let person = Person(
                name: names[index],
                surname: surnames[index],
                number: numbers[index],
                email: emails[index]
            )
            
            contactFromData.append(person)
        }

        return contactFromData.sorted { $0.name < $1.name }
    }
    
    static func getContact() -> Person {
        
        let dataManager = DataManager.shared
        
        let name = dataManager.names.randomElement() ?? ""
        let surname = dataManager.surnames.randomElement() ?? ""
        let number = dataManager.numbers.randomElement() ?? ""
        let email = dataManager.emails.randomElement() ?? ""
        
        let person = Person(name: name, surname: surname, number: number, email: email)
        
        return person
    }
        
}
