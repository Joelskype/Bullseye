//
//  Shapes.swift
//  Bullseye
//
//  Created by Алексей Ряжев on 1/16/25.
//

import SwiftUI

struct Shapes: View {
    
    @State private var wideShapes = true
    
    
    var body: some View {
        VStack {
            if !wideShapes {
                Circle()
                    .strokeBorder(Color.blue, lineWidth: 20.0)
                    .frame(width: 200, height: 100.0)
                    .transition(.opacity)
            }
            
            RoundedRectangle(cornerRadius: 20.0)
                .fill(Color.blue)
                .frame(width: wideShapes ? 0 : 200, height: wideShapes ? 0 : 100)
                
            Capsule()
                .fill(Color.blue)
                .frame(width: wideShapes ? 0 : 200, height: wideShapes ? 0 : 100)

            Ellipse()
                .fill(Color.blue)
                .frame(width: wideShapes ? 0 : 200, height: wideShapes ? 0 : 100)
            Button(action: {
                withAnimation{
                    wideShapes.toggle()
                    
                }}) {
                    Text("Animate!")
                }
            
        }
        .background(Color.green)
    }
}

#Preview {
    Shapes()
}
