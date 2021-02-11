//
//  AlarmList.swift
//  FirstProject
//
//  Created by AJ Diaz on 1/27/21.
//

import SwiftUI

struct AlarmList: View {
    var alarm: SelectedAlarm = alarams[0]
    var namespace: Namespace.ID
        var body: some View {
            VStack {
                ScrollView {
                    AlarmItem(alarm: alarm)
                        .matchedGeometryEffect(id: alarm.id,in: namespace)
                        .frame(height: 300)
                        
                    VStack {
                        ForEach(alarams) { item in
                            HomeRow(item: item)
                            Divider()
                        }
                    }
                   
                    .background(Color("Background 1"))
                    .clipShape(RoundedRectangle(cornerRadius: 22 ,style: .continuous))
                    .matchedGeometryEffect(id: "container\(alarm.id)", in: namespace)
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        }
    }
}}

struct AlarmList_Previews: PreviewProvider {
    @Namespace static var namespace
    static var previews: some View {
        AlarmList(namespace: namespace)
    }
}
            

