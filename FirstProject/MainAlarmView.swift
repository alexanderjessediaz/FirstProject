//
//  MainAlarmView.swift
//  FirstProject
//
//  Created by AJ Diaz on 1/22/21.
//

import SwiftUI

struct MainAlarmView: View {
    var body: some View {
        List(0 ..< 20) { item in
            HomeRow()
        }
        .listStyle(InsetGroupedListStyle())
        .navigationTitle("Alarms")
    }
}

struct MainAlarmView_Previews: PreviewProvider {
    static var previews: some View {
        MainAlarmView()
    }
}
