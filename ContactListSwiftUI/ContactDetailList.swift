//
//  ContactDetail.swift
//  ContactListSwiftUI
//
//  Created by Vladimir Izmaylov on 13.11.2021.
//

import SwiftUI

struct ContactDetailList: View {
    
    let contacts: [Person]
    
    var body: some View {
        NavigationView {
            List(contacts) { contact in
                Section  {
                    ContactDetailRow(contact: contact)
                } header: {
                    Text("\(contact.fullName)")
                        .bold()
                }
            }
            .navigationTitle("Contact Detail List")
        }
    }
    struct ContactDetail_Previews: PreviewProvider {
        static var previews: some View {
            ContactDetailList(contacts: Person.getContacts())
        }
    }
}
