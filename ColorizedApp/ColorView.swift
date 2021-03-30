//
//  ColorView.swift
//  ColorizedApp
//
//  Created by Сергей Корнев on 29.03.2021.
//

import SwiftUI

struct ColorView: View {
    
    let value: Color
    
    var body: some View {
        
        RoundedRectangle(cornerRadius: 50)
            .fill(value)
            .frame(height: 250)
            .overlay(RoundedRectangle(cornerRadius: 50)
                        .stroke(Color.white, lineWidth: 5))
            .padding(.vertical)
    }
    
    
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView(value: .red)
    }
}
