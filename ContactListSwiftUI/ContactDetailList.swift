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
        List() {
            ForEach(contacts) { contact in
                Section  {
                    ContactDetailRow(contact: contact)
                } header: {
                    Text("\(contact.fullName)")
                        .bold()
                }
            }
        }
    }
    
    struct ContactDetail_Previews: PreviewProvider {
        static var previews: some View {
            ContactDetailList(contacts: Person.getContacts())
        }
    }
}
