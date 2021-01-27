//
//  FirstProjectApp.swift
//  FirstProject
//
//  Created by AJ Diaz on 11/10/20.
//

import SwiftUI

@main
struct FirstProjectApp: App {
    var body: some Scene {
        WindowGroup {
            Sidebar()
        }
    }
}

struct FirstProjectApp_Previews: PreviewProvider {
    static var previews: some View {
        Sidebar()
    }
}
