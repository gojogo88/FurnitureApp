//
//  HomeScreen.swift
//  FurnitureApp
//
//  Created by Jonathan Go on 01.03.22.
//

import SwiftUI

struct HomeScreen: View {
    @State private var selectedIndex = 0
    private let categories = ["All", "Chair", "Sofa", "Lamp", "Kitchen", "Tables"]
    
    var body: some View {
        NavigationView {
            ZStack {
                Color("myBg")
                    .edgesIgnoringSafeArea(.all)
                
                ScrollView {
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
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                ForEach(0 ..< 4) { index in
                                    NavigationLink(destination: DetailsScreen()) {
                                        ProductCardView(image: Image("chair_\(index + 1)"), size: 210)
                                    }
                                    .navigationBarHidden(true)
                                    .foregroundColor(.black)
                                    
                                }
                                .padding(.trailing)
                            }
                            .padding(.leading)
                        }
                        
                        Text("Best")
                            .font(.custom("PlayfairDisplay-Bold", size: 24))
                            .padding(.horizontal)
                            .padding(.top)
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                ForEach(0 ..< 4) { index in
                                    ProductCardView(image: Image("chair_\(index + 1)"), size: 180)
                                }
                                .padding(.trailing)
                            }
                            .padding(.leading)
                        }
                    }
                }
                
                //Custom Bottom navigation
                HStack {
                    BottomNavBarItem(image: Image("home")) {}
                    BottomNavBarItem(image: Image("fav")) {}
                    BottomNavBarItem(image: Image("shop")) {}
                    BottomNavBarItem(image: Image("user")) {}
                }
                .padding()
                .background(Color.white)
                .clipShape(Capsule())
                .padding(.horizontal)
                .shadow(color: Color.black.opacity(0.15), radius: 8, x: 2, y: 6)
                .frame(maxHeight: .infinity, alignment: .bottom)
            }
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
