//
//  ColorDotView.swift
//  FurnitureApp
//
//  Created by Jonathan Go on 01.03.22.
//

import SwiftUI

struct ColorDotView: View {
    let color: Color
    var body: some View {
        color
            .frame(width: 24, height: 24)
            .clipShape(Circle())
    }
}

struct ColorDotView_Previews: PreviewProvider {
    static var previews: some View {
        ColorDotView(color: Color.white)
    }
}
