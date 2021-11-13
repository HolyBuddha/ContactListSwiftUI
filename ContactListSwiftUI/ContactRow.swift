//
//  ContactRow.swift
//  ContactListSwiftUI
//
//  Created by Vladimir Izmaylov on 14.11.2021.
//

import SwiftUI

struct ContactRow: View {
    
    let contact: Person
    
    var body: some View {
        HStack {
            Text("\(contact.fullName)")
        }
    }
}

struct ContactRow_Previews: PreviewProvider {
    static var previews: some View {
        ContactRow(contact: .getContact())
    }
}
