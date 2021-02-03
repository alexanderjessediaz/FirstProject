//
//  AlarmItem.swift
//  FirstProject
//
//  Created by AJ Diaz on 1/27/21.
//

import SwiftUI

struct AlarmItem: View {
    var alarm: SelectedAlarm = alarams[0]
    var body: some View {
        VStack(alignment: .leading, spacing: 4.0) {
            Spacer()
            HStack {
                Spacer()
                Image(alarm.image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                Spacer()
            }
            Text(alarm.title).fontWeight(.bold)
                .foregroundColor(.white)
            Text(alarm.subtitle).font(.footnote)
                .foregroundColor(.white)
        }
        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        .background(alarm.color)
        .clipShape(RoundedRectangle(cornerRadius: 22, style: .continuous))
        .shadow(color: alarm.color.opacity(0.3), radius: 20, x:0, y:10)
    }
}

struct AlarmItem_Previews: PreviewProvider {
    static var previews: some View {
        AlarmItem()
    }
}
