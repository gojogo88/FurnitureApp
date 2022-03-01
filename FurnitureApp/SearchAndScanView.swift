//
//  SearchAndScanView.swift
//  FurnitureApp
//
//  Created by Jonathan Go on 01.03.22.
//

import SwiftUI

struct SearchAndScanView: View {
    @State private var search = ""
    var body: some View {
        HStack {
            HStack {
                Image("search")
                    .padding(.trailing, 8)
                TextField("Search Furniture", text: $search)
            }
            .padding(.all, 20)
            .background(Color.white)
            .cornerRadius(10)
            .padding(.trailing)
            
            Button(action: {}) {
                Image("scan")
                    .padding()
                    .background(Color("primary"))
                    .cornerRadius(10)
            }
        }
        .padding(.horizontal)
    }
}

struct SearchAndScanView_Previews: PreviewProvider {
    static var previews: some View {
        SearchAndScanView()
    }
}
