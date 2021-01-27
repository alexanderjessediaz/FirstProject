//
//  MainAlarmView.swift
//  FirstProject
//
//  Created by AJ Diaz on 1/22/21.
//

import SwiftUI

struct MainAlarmView: View {
    @State var show = false
    var body: some View{
        ZStack {
            AlarmItem()
                .frame(width: 335, height: 250)
            VStack{
                if show {
                    AlarmItem()
                        .transition(.move(edge:
                                .trailing))
                        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                        
                }
            }
            
        }
        .onTapGesture {
            withAnimation {
                show.toggle()
            }
            
        }
//        .animation(/*@START_MENU_TOKEN@*/.easeIn/*@END_MENU_TOKEN@*/)
    }
}

struct MainAlarmView_Previews: PreviewProvider {
    static var previews: some View {
        MainAlarmView()
    }
}
