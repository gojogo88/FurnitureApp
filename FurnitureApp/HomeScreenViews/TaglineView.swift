//
//  TaglineView.swift
//  FurnitureApp
//
//  Created by Jonathan Go on 01.03.22.
//

import SwiftUI

struct TaglineView: View {
    var body: some View {
        Text("Find the \nBest")
            .font(.custom("PlayfairDisplay-Regular", size: 28))
            .foregroundColor(Color("primary"))
        + Text("Furniture")
            .font(.custom("PlayfairDisplay-Bold", size: 28))
            .foregroundColor(Color("primary"))
    }
}

struct TaglineView_Previews: PreviewProvider {
    static var previews: some View {
        TaglineView()
    }
}
