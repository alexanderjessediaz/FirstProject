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
            content
                .navigationBarHidden(true)
            fullContent
                .background(VisualEffectBlur(blurStyle: .dark).edgesIgnoringSafeArea(   .all))
        }
        .navigationTitle("Alarms")
    }
    
    var content: some View {
        ScrollView {
            VStack(spacing: 0) {
                Text("Alarms")
                    .font(.largeTitle)
                    .bold()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 16)
                    .padding(.top, 54)
                
                LazyVGrid (
                    columns: [GridItem(.adaptive(minimum: 200), spacing: 16)],
                    spacing: 16
                ) {
                    ForEach(alarams) { item in
                        VStack {
                            AlarmItem(alarm: item)
                                .matchedGeometryEffect(id: item.id, in: namespace, isSource:!show)
                                .frame(height: 250)
                                .onTapGesture {
                                    withAnimation(.spring()) {
                                        show.toggle()
                                        selectedItem = item
                                        isDisabled = true
                                    }
                                }
                                .disabled(isDisabled)
                        }
                        .matchedGeometryEffect(id: "container\(item.id)", in: namespace, isSource:!show)
                    }
                    
                }
                .padding(16)
                .frame(maxWidth: .infinity)
                
                ForEach(alarams) { item in
                    HomeRow(item: item)
                }
            }
            
        }
        .zIndex(/*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
    }
    @ViewBuilder
    var fullContent: some View {
        if selectedItem != nil {
            ZStack(alignment: .topTrailing) {
                AlarmDetail(alarm: selectedItem!, namespace: namespace)
                
                
                CloseButton()
                    .padding(.trailing, 16)
                    .onTapGesture {
                        withAnimation {
                            show.toggle()
                            selectedItem = nil
                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5){
                                isDisabled = false
                            }
                        }
                    }
            }
            .zIndex(2)
            .frame(maxWidth: 712)
            .frame(maxWidth: .infinity)
            
        }
    }
}

struct MainAlarmView_Previews: PreviewProvider {
    static var previews: some View {
        MainAlarmView()
    }
}
