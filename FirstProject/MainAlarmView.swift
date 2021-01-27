//
//  MainAlarmView.swift
//  FirstProject
//
//  Created by AJ Diaz on 1/22/21.
//

import SwiftUI

struct MainAlarmView: View {
    @State var show = false
    @Namespace var namespace
    
    var body: some View{
        ZStack {
            AlarmItem()
                .matchedGeometryEffect(id: "Card", in:
                                        namespace, isSource: !show)
                .frame(width: 335, height: 250)
            if show {
                ScrollView {
                    AlarmItem()
                        .matchedGeometryEffect(id:
                                                "Card", in:namespace)
                        .frame(height: 300)
                    VStack {
                        ForEach(0 ..< 20) { item in
                            HomeRow()
                        }
                    }
                    .padding()
                }
                .transition(.opacity)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            }
        }
        .onTapGesture {
            withAnimation {
                show.toggle()
            }
            
        }
    }
}

struct MainAlarmView_Previews: PreviewProvider {
    static var previews: some View {
        MainAlarmView()
    }
}
