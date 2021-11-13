//
//  ContactRow.swift
//  ContactListSwiftUI
//
//  Created by Vladimir Izmaylov on 13.11.2021.
//

import SwiftUI

struct ContactRow: View {
    let contact: Person
    
    var body: some View {
        VStack {
            Text("\(contact.name)")
            Text("\(contact.surname)")
            Text("\(contact.email)")
            Text("\(contact.number)")
    }
}

struct ContactRow_Previews: PreviewProvider {
    static var previews: some View {
        ContactRow(contact: Person.getContact())
    }
}
}
