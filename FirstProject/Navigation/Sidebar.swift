//
//  Sidebar.swift
//  FirstProject
//
//  Created by AJ Diaz on 1/27/21.
//

import SwiftUI

struct Sidebar: View {
    var body: some View {
        NavigationView {
            content
            .navigationTitle("placeholder")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Image(systemName: "person.crop.circle")
                }
            }
            MainAlarmView()
        
    }
}
    var content: some View {
        List {
            NavigationLink(destination: MainAlarmView()){
                Label("Placeholder", systemImage:
                        "deskclock.fill")
            }
            
            Label("Placeholder", systemImage:
                    "deskclock.fill")
            Label("Placeholder", systemImage:
                    "deskclock.fill")
            Label("Placeholder", systemImage:
                    "deskclock.fill")
            Label("Placeholder", systemImage:
                    "deskclock.fill")
            Label("Placeholder", systemImage:
                    "deskclock.fill")
        }
        .listStyle(SidebarListStyle())
    }
}

struct Sidebar_Previews: PreviewProvider {
    static var previews: some View {
        Sidebar()
    }
}

