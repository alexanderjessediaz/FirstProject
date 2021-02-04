//
//  SelectedAlarm.swift
//  FirstProject
//
//  Created by AJ Diaz on 2/3/21.
//

import SwiftUI

struct SelectedAlarm: Identifiable {
    var id = UUID()
    var title: String
    var subtitle: String
    var image: String
    var color: Color
}

var alarams = [
    SelectedAlarm(
        title: "Wake Up",
        subtitle: "Morning",
        image: "Alarm Logov3",
        color: Color(#colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1))
    ),
    SelectedAlarm(
        title: "Sleep",
        subtitle: "Evening",
        image: "Alarm Logov3",
        color: Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1))
    ),
    SelectedAlarm(
        title: "Alert",
        subtitle: "Day",
        image: "Alarm Logo",
        color: Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))
    ),
]
