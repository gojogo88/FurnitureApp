//
//  CustomBackButtonView.swift
//  FurnitureApp
//
//  Created by Jonathan Go on 01.03.22.
//

import SwiftUI

struct CustomBackButtonView: View {
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Image(systemName: "chevron.backward")
                .padding(.all, 12)
                .background(.white)
                .cornerRadius(8)
                .foregroundColor(.black)
        }
    }
}

struct CustomBackButtonView_Previews: PreviewProvider {
    static var previews: some View {
        CustomBackButtonView(action: {})
    }
}
