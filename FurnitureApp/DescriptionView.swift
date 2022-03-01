//
//  DescriptionView.swift
//  FurnitureApp
//
//  Created by Jonathan Go on 01.03.22.
//

import SwiftUI

struct DescriptionView: View {
    var body: some View {
        VStack {
            VStack {
                Text("Luxury Swedian \nChair")
                    .font(.title)
                    .fontWeight(.bold)
                
                HStack(spacing: 4) {
                    ForEach(0 ..< 5) { item in
                        Image("star")
                    }
                    Text("(4.9")
                        .opacity(0.5)
                        .padding(.leading, 8)
                    Spacer()
                }
                
                Text("Description")
                    .fontWeight(.medium)
                    .padding(.vertical, 8)
                Text("Luxury Swedian Chair is a contemporary chair based on the virtues of modern craft. It carries on the simplicity of the archetypical chair.")
                    .lineSpacing(8)
                    .opacity(0.6)
                
                HStack(alignment: .top) {
                    VStack(alignment: .leading) {
                        Text("Size")
                            .fontWeight(.semibold)
                            .padding(.bottom, 4)
                        Text("Height: 120 cm")
                            .opacity(0.6)
                        Text("Width: 80 cm")
                            .opacity(0.6)
                        Text("Diameter: 72 cm")
                            .opacity(0.6)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                    VStack(alignment: .leading) {
                        Text("Treatment")
                            .fontWeight(.semibold)
                            .padding(.bottom, 4)
                        Text("Jati Wood, Canvas, \nAmazing Love")
                            .opacity(0.6)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                }
                .padding(.vertical)
                
                HStack(alignment: .bottom) {
                    VStack(alignment: .leading) {
                        Text("Colors")
                            .fontWeight(.semibold)
                            .padding(.bottom, 4)
                        
                        HStack {
                            ColorDotView(color: .white)
                            ColorDotView(color: .black)
                            ColorDotView(color: Color("primary"))
                        }
                    }
                    
                    Spacer()
                    
                    VStack(alignment: .leading) {
                        Text("Quantity")
                            .fontWeight(.semibold)
                            .padding(.bottom, 4)
                        
                        Button(action: {}) {
                            Image(systemName: "minus")
                                .padding(.all, 8)
                        }
                        .frame(width: 30, height: 30)
                        .overlay(RoundedRectangle(cornerRadius: 50).stroke())
                        .foregroundColor(.black)
                        
                        Text("1")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .padding(.horizontal, 8)
                        
                        Button(action: {}) {
                            Image(systemName: "plus")
                                .padding(.all, 8)
                        }
                        //.frame(width: 30, height: 30)
                        .background(Color("primary"))
                        .clipShape(Circle())
                        .foregroundColor(.white)
                    }
                }
            }
            .padding()
            .padding(.top)
            .background(Color("myBg"))
            .cornerRadius(40)
        }
    }
}

struct DescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        DescriptionView()
    }
}
