//
//  ContactListSwiftUIApp.swift
//  ContactListSwiftUI
//
//  Created by Vladimir Izmaylov on 13.11.2021.
//

import SwiftUI

@main
struct ContactListSwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(contacts: Person.getContacts())
        }
    }
}
