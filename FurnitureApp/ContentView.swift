//
//  ContentView.swift
//  FurnitureApp
//
//  Created by Jonathan Go on 01.03.22.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedIndex = 0
    private let categories = ["All", "Chair", "Sofa", "Lamp", "Kitchen", "Tables"]
    
    var body: some View {
        ZStack {
            Color("myBg")
                .edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .leading) {
                AppBarView()
                
                TaglineView()
                    .padding()
                
                SearchAndScanView()
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(0 ..< categories.count) { i in
                            // if index == 1, isActive = true
                            CategoryView(isActive: i == selectedIndex, text: categories[i])
                                .onTapGesture {
                                    selectedIndex = i
                                }
                        }
                    }
                    .padding()
                }
                
                Text("Popular")
                    .font(.custom("PlayfairDisplay-Bold", size: 24))
                    .padding(.horizontal)
                
                ProductCardView()
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
