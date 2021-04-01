//
//  ColorView.swift
//  ColorizedApp
//
//  Created by Сергей Корнев on 29.03.2021.
//

import SwiftUI

struct ColorView: View {
    
    let rComponent: Double
    let gComponent: Double
    let bComponent: Double
    
    var body: some View {
        RoundedRectangle(cornerRadius: 50)
            .fill(Color(red: rComponent / 255,
                        green: gComponent / 255,
                        blue: bComponent / 255))
            .frame(height: 250)
            .overlay(RoundedRectangle(cornerRadius: 50)
                        .stroke(Color.white, lineWidth: 5))
            .padding()
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView(rComponent: 25, gComponent: 50, bComponent: 75)
    }
}
