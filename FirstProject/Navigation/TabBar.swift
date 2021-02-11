//
//  TabBar.swift
//  FirstProject
//
//  Created by AJ Diaz on 2/11/21.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView {
            NavigationView {
                MainAlarmView()
            }
            .tabItem {
                Image(systemName: "alarm")
                Text("Alarms")
            }
            
            NavigationView {
                AlarmList()
            }
            .tabItem {
                Image(systemName: "list.bullet.rectangle")
                
            }
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
