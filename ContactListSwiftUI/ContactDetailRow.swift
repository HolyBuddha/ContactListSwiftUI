//
//  ContactRow.swift
//  ContactListSwiftUI
//
//  Created by Vladimir Izmaylov on 13.11.2021.
//

import SwiftUI

struct ContactDetailRow: View {
    let contact: Person
    
    var body: some View {
        Label(contact.number, systemImage: "phone")
        Label(contact.email, systemImage: "mail")
    }
}

struct ContactRow_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetailRow(contact: Person.getContact())
    }
}

