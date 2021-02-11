//
//  ContentView.swift
//  FirstProject
//
//  Created by AJ Diaz on 11/10/20.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    @ViewBuilder
    var body: some View {
        if horizontalSizeClass == .compact {
            
        } else {
            Sidebar()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .preferredColorScheme(.dark)
            
        }
    }
}
    

