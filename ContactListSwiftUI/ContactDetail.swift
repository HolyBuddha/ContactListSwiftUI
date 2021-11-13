//
//  ContactDetail.swift
//  ContactListSwiftUI
//
//  Created by Vladimir Izmaylov on 13.11.2021.
//

import SwiftUI

struct ContactDetail: View {
    
    let contacts: [Person]
    
    var body: some View {
        List() {
            ForEach(contacts) { contact in
                Section  {
                    ContactRow(contact: contact)
                } header: {
                    Text("\(contact.fullName)")
                        .bold()
                }
            }
        }
    }
    
    struct ContactDetail_Previews: PreviewProvider {
        static var previews: some View {
            ContactDetail(contacts: Person.getContacts())
        }
    }
}
