//
//  AlarmList.swift
//  FirstProject
//
//  Created by AJ Diaz on 1/27/21.
//

import SwiftUI

struct AlarmList: View {
        var body: some View {
            List(0 ..< 20) { item in
                HomeRow()
            }
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Alarms")
        }
    }

struct AlarmList_Previews: PreviewProvider {
    static var previews: some View {
        AlarmList()
    }
}
            

