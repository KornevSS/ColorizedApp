//
//  ContentView.swift
//  ColorizedApp
//
//  Created by Сергей Корнев on 28.03.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var redValue: Double = 5
    @State private var greenValue: Double = 125
    @State private var blueValue: Double = 250
    
    var body: some View {
        ZStack {
            Color(.black)
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 20) {
                ColorView(value: Color(
                            .sRGB,
                            red: redValue / 255,
                            green: greenValue / 255,
                            blue: blueValue / 255)
                )
                SingleColorSlider(value: $redValue, accentColor: .red)
                SingleColorSlider(value: $greenValue, accentColor: .green)
                SingleColorSlider(value: $blueValue, accentColor: .blue)
                Spacer(minLength: 100)
            }.padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
