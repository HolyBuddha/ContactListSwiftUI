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
        VStack(alignment: .leading, spacing: 5) {
            HStack {
                Image(systemName: "phone")
                    .foregroundColor(.blue)
                Text("\(contact.email)")
            }
            HStack {
                Image(systemName: "mail")
                    .foregroundColor(.blue)
                Text("\(contact.number)")
            }
    }
}

struct ContactRow_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetailRow(contact: Person.getContact())
    }
}
}
