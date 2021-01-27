//
//  CourseRow.swift
//  FirstProject
//
//  Created by AJ Diaz on 1/22/21.
//

import SwiftUI

struct HomeRow: View {
    var body: some View {
        HStack(alignment: .top) {
            Image(systemName: "alarm")
                .renderingMode(.original)
                .frame(width: 48.0, height: 48.0)
                .imageScale(.large)
                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.blue/*@END_MENU_TOKEN@*/)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                
            VStack(alignment: .leading, spacing: 4.0) {
                Text("AlarmApp")
                    .font(.subheadline)
                    .bold()
                Text("By AJ Diaz")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            Spacer()
        }
        
    }
}

struct HomeRow_Previews: PreviewProvider {
    static var previews: some View {
        HomeRow()
    }
}
