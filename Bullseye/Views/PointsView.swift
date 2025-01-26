//
//  PointsView.swift
//  Bullseye
//
//  Created by Алексей Ряжев on 1/19/25.
//

import SwiftUI

struct PointsView: View {

    @Binding var alertIsVisible : Bool
    @Binding var sliderValue : Double
    @Binding var game : Game
    
    var body: some View {
        let roundedValue = Int(sliderValue.rounded())
        let points = game.points(roundedValue)
        
        VStack(spacing: 10) {
            InstructionText(text: "The slider's value is")
            BigNumberText(text: String(roundedValue))
            BodyText(text: "You scored \(points) points\n🎉🎉🎉")
            Button(action: {
                withAnimation{
                    alertIsVisible = false
                    game.startNewRound(points)
                }
            }) {
                ButtonText(text: "Start New Round")
            }
        }
        .padding()
        .frame(maxWidth: 300)
        .background(Color("BackgroundColor"))
        .cornerRadius(Constants.General.roundRectViewRadius)
        .shadow(radius: 10, x: 5, y: 5)
        .transition(.scale)
        
    }
}


struct PointsView_Previews: PreviewProvider {
    
    static var alertIsVisible = Binding.constant(false)
    static var sliderValue = Binding.constant(50.0)
    static var game = Binding.constant(Game())
    
    static var previews: some View {
        PointsView(alertIsVisible: alertIsVisible, sliderValue: sliderValue, game: game)
//
    }
}
