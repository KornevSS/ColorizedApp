//
//  SingleColorSlider.swift
//  ColorizedApp
//
//  Created by Сергей Корнев on 29.03.2021.
//

import SwiftUI

struct SingleColorSlider: View {
    
    @Binding var value: Double
    
    @State private var alertPresented = false
    @State private var isEditing = false
        
    var accentColor: Color = .blue
    
    var body: some View {
        HStack {
            Text("\(lround(value))")
                .foregroundColor(.white)
                .frame(width: 35, alignment: .leading
                )
            
            Slider(value: $value,
                   in: 0...255,
                   step: 1,
                   onEditingChanged: { editing in isEditing = editing }
            ).accentColor(accentColor)
            
            TextField("",
                      value: $value,
                      formatter: NumberFormatter(),
                      onEditingChanged: { editing in isEditing = editing },
                      onCommit: { validate() })
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .foregroundColor(isEditing ? .red : .blue)
                .frame(width: 50)
                .alert(isPresented: $alertPresented, content: {
                    Alert(title: Text("⚠️ Incorrect value"),
                          message: Text("Please, enter value in 0..255"),
                          dismissButton: .default(Text("OK ✅"))
                    )
                })
        }
    }
    
    private func validate() {
        if !(0...255).contains(value) {
            value = 255
            alertPresented.toggle()
            return
        }
    }
    
}

struct SingleColorSlider_Previews: PreviewProvider {
    static var previews: some View {
        SingleColorSlider(value: .constant(50), accentColor: .red)
    }
}
