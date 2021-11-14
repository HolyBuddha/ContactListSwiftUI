//
//  ContentView.swift
//  ContactListSwiftUI
//
//  Created by Vladimir Izmaylov on 13.11.2021.
//

import SwiftUI

struct ContentView: View {
    
    let contacts: [Person]
    
    var body: some View {
        TabView {
            HomeScreen(contacts: contacts)
                .tabItem {
                    Image(systemName: "person")
                    Text("Home")
                }
            ContactDetailList(contacts: contacts)
                .tabItem {
                    Image(systemName: "person.3")
                    Text("Detail")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(contacts: Person.getContacts())
    }
}
