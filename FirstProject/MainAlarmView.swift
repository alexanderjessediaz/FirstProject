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
            ScrollView {
                VStack (spacing: 20) {
                    ForEach(alarams) { item in
                        AlarmItem(alarm: item)
                            .matchedGeometryEffect(id: item.id, in:
                                                    namespace, isSource:!show)
                            .frame(width: 335, height: 250)
                    }
                    
                }
                .frame(maxWidth: .infinity)
            }
            if show {
                ScrollView {
                    AlarmItem(alarm: alarams[0])
                        .matchedGeometryEffect(id: alarams[0].id, in:namespace)
                        .frame(height: 300)
                    VStack {
                        ForEach(0 ..< 20) { item in
                            HomeRow()
                        }
                    }
                    .padding()
                }
                .background(Color("Background 1"))
                .transition(
                    .asymmetric(
                        insertion: AnyTransition
                            .opacity
                            .animation(Animation.spring().delay(0.3)),
                        removal: AnyTransition
                            .opacity
                            .animation(.spring())))
                
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
