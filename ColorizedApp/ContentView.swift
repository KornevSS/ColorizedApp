//
//  ContentView.swift
//  ColorizedApp
//
//  Created by Сергей Корнев on 28.03.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var redColor: Double = Double.random(in: 0...255)
    @State private var greenColor: Double = Double.random(in: 0...255)
    @State private var blueColor: Double = Double.random(in: 0...255)
    
    var body: some View {
        ZStack {
            Color(.black)
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 20) {
                ColorView(rComponent: redColor, gComponent: greenColor, bComponent: blueColor)
                SingleColorUnit(value: $redColor, accentColor: .red)
                SingleColorUnit(value: $greenColor, accentColor: .green)
                SingleColorUnit(value: $blueColor, accentColor: .blue)
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
