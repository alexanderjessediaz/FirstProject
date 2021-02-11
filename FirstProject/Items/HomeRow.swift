//
//  CourseRow.swift
//  FirstProject
//
//  Created by AJ Diaz on 1/22/21.
//

import SwiftUI

struct HomeRow: View {
    
    var item: SelectedAlarm = alarams[0]
    var body: some View {
        HStack(alignment: .top) {
            Image(item.image)
                .renderingMode(.original)
                .resizable()
                .frame(width: 48.0, height: 48.0)
                .imageScale(.small)
                .background(item.color)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                
            VStack(alignment: .leading, spacing: 4.0) {
                Text(item.title)
                    .font(.subheadline)
                    .bold()
                Text(item.subtitle)
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
