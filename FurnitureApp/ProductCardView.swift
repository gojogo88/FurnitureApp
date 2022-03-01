//
//  ProductCardView.swift
//  FurnitureApp
//
//  Created by Jonathan Go on 01.03.22.
//

import SwiftUI

struct ProductCardView: View {
    var body: some View {
        VStack {
            Image("chair_1")
                .resizable()
                .frame(width: 210, height: 200)
                .cornerRadius(20)
            
            Text("Luxury Swedian Chair")
                .font(.title3)
                .fontWeight(.bold)
            
            HStack(spacing: 2) {
                ForEach(0 ..< 5) { _ in
                    Image("star")
                }
                
                Spacer()
                
                Text("$ 1299")
                    .font(.title3)
                    .fontWeight(.bold)
            }
        }
        .frame(width: 210)
        .padding()
        .background(Color.white)
        .cornerRadius(20)
    }
}

struct ProductCardView_Previews: PreviewProvider {
    static var previews: some View {
        ProductCardView()
    }
}
