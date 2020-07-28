//
//  ContentView.swift
//  DisableFormInSwiftUI
//
//  Created by Ramill Ibragimov on 28.07.2020.
//

import SwiftUI

struct ContentView: View {
    
    @State private var username = ""
    @State private var password = ""
    
    private var disable: Bool {
        username.count < 5 || password.count < 5
    }
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Username", text: $username)
                    TextField("Password", text: $password)
                }
                
                Section {
                    Button("LOGIN") {
                        print("Loggin passed")
                    }.disabled(disable)
                }
            }.navigationTitle("Disabled Form")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
