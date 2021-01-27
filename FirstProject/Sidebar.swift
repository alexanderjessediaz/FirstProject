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
            .navigationTitle("placeholder")
            
            MainAlarmView()
        }
    }
}

struct Sidebar_Previews: PreviewProvider {
    static var previews: some View {
        Sidebar()
    }
}
