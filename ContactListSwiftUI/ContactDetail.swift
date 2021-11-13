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
                }
            }
        .listStyle(.grouped)
    }
}

struct ContactDetail_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetail(contacts: Person.getContacts())
    }
}
}

struct listHeader: View {
    let contact: Person
    
    var body: some View {
        Text("\(contact.fullName)")
}
}
//var body: some View {
//     List {
//         Section(header: ListHeader(), footer: ListFooter()) {
//             ForEach(hikingTrails) { trail in
//                 TrailRow(trail: trail)
//             }
//         }
//     }.listStyle(GroupedListStyle())
// }
//}
//
//struct ListHeader: View {
// var body: some View {
//     HStack {
//         Image(systemName: "map")
//         Text("Hiking Trails in Silicon Valley")
//     }
// }
//}
//
//struct ListFooter: View {
// var body: some View {
//     Text("Remember to pack plenty of water and bring sunscreen.")
// }
//}
