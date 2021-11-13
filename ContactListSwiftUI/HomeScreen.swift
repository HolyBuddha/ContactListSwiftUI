//
//  HomeScreen.swift
//  ContactListSwiftUI
//
//  Created by Vladimir Izmaylov on 13.11.2021.
//

import SwiftUI

struct HomeScreen: View {
    let contacts : [Person]
    
    var body: some View {
        List(contacts) {
            Text($0.fullName)
        }
    }
}
struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen(contacts: Person.getContacts())
    }
}
