//
//  ContentView.swift
//  FurnitureApp
//
//  Created by Jonathan Go on 01.03.22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color("myBg")
                .edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .leading) {
                AppBarView()
                
                TaglineView()
                    .padding()
                
                SearchAndScanView()
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
