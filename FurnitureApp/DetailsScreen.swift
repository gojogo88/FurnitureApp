//
//  DetailsScreen.swift
//  FurnitureApp
//
//  Created by Jonathan Go on 01.03.22.
//

import SwiftUI

struct DetailsScreen: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        ZStack {
            Color("myBg")
                .edgesIgnoringSafeArea(.all)
            
            ScrollView {
                Image("chair_1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    
                
                DescriptionView()
                    .offset(y: -40)
            }
            .edgesIgnoringSafeArea(.top)
            
            HStack {
                Text("$ 1299")
                    .font(.title)
                    .foregroundColor(.white)
                Spacer()
                
                Button(action: {}) {
                    Text("Add to cart")
                        .padding()
                        .padding(.horizontal)
                        .background(.white)
                        .cornerRadius(10)
                        .foregroundColor(Color("primary"))
                }
            }
            .padding()
            .padding(.horizontal)
            .background(Color("primary"))
            .cornerRadius(50, corners: .topLeft)
            .frame(maxHeight: .infinity, alignment: .bottom)
        }
        .edgesIgnoringSafeArea(.bottom)
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: CustomBackButtonView(action: {presentationMode.wrappedValue.dismiss()}), trailing: Image("threeDot"))
    }
}

struct DetailsScreen_Previews: PreviewProvider {
    static var previews: some View {
        DetailsScreen()
    }
}
