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
    @State var selectedItem: SelectedAlarm? = nil
    @State var isDisabled = false
    
    var body: some View{
        ZStack {
            ScrollView {
                LazyVGrid (
                    columns: [
                        GridItem(.adaptive(minimum:200), spacing: 16)
                    ],
                    spacing: 16
                ) {
                    ForEach(alarams) { item in
                        AlarmItem(alarm: item)
                            .matchedGeometryEffect(id: item.id, in: namespace, isSource:!show)
                            .frame(height: 250)
                            .onTapGesture {
                                withAnimation {
                                    show.toggle()
                                    selectedItem = item
                                    isDisabled = true
                                }
                            }
                            .disabled(isDisabled)
                    }
                    
                }
                .padding(16)
                .frame(maxWidth: .infinity)
            }
            if selectedItem != nil {
                ScrollView {
                    AlarmItem(alarm: selectedItem!)
                        .matchedGeometryEffect(id: selectedItem!.id,in:namespace)
                        .frame(height: 300)
                        .onTapGesture {
                            withAnimation {
                                show.toggle()
                                selectedItem = nil
                                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5){
                                    isDisabled = false
                                }
                                
                            }
                        }
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
       
    }
}

struct MainAlarmView_Previews: PreviewProvider {
    static var previews: some View {
        MainAlarmView()
    }
}
