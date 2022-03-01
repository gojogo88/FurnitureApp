//
//  BottomNavBarItem.swift
//  FurnitureApp
//
//  Created by Jonathan Go on 01.03.22.
//

import SwiftUI

struct BottomNavBarItem: View {
    let image: Image
    let action : () -> Void
    
    var body: some View {
        Button(action: action) {
            image
                .frame(maxWidth: .infinity)
        }
    }
}

struct BottomNavBarItem_Previews: PreviewProvider {
    static var previews: some View {
        BottomNavBarItem(image: Image("home")) {}
    }
}
