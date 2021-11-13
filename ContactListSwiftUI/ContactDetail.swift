//
//  ContactDetail.swift
//  ContactListSwiftUI
//
//  Created by Vladimir Izmaylov on 14.11.2021.
//

import SwiftUI

struct ContactDetail: View {
    
    let contact: Person
    
    var body: some View {
        List() {
            HStack {
                Spacer()
                Image(systemName: "person")
                        .resizable()
                    .frame(width: 100, height: 100, alignment: .center)
                Spacer()
            }
                ContactDetailRow(contact: Person.getContact())
        }
        .navigationTitle("\(contact.fullName)")
    }
}

struct ContactDetail_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetail(contact: Person.getContact())
    }
}
