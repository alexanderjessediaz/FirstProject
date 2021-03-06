//
//  ContentView.swift
//  FirstProject
//
//  Created by AJ Diaz on 11/10/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 4.0) {
            Spacer()
            VStack {
                Spacer()
                VStack {
                    Image("Alarm Logov4")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(20.0)
                        .shadow(radius: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                        .imageScale(/*@START_MENU_TOKEN@*/.large/*@END_MENU_TOKEN@*/)
                        .opacity(/*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
                        
                        
                }
                Spacer()
            }
            Text("AlarmApp").fontWeight(.bold)
                .foregroundColor(.white)
            Text("AlarmApp").font(.footnote)
                .foregroundColor(.white)
        }
        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        .background(Color.purple)
        .cornerRadius(20.0)
        .shadow(radius: 10)
    }

        
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .preferredColorScheme(.dark)
            ContentView()
                .previewLayout(.fixed(width: 200.0, height: 200.0))
                .preferredColorScheme(.dark)
        }
    }
}
