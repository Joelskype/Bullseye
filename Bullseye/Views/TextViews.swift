//
//  TextViews.swift
//  Bullseye
//
//  Created by Алексей Ряжев on 1/13/25.
//

import SwiftUI
import Foundation

struct InstructionText: View {
    
    var text: String
    var body: some View {
        
        Text(text.uppercased())
            .bold()
            .kerning(2.0)
            .multilineTextAlignment(.center)
            .lineSpacing(4.0)
            .font(.footnote)
            .foregroundColor(Color("TextColor"))
        
    }
}


struct BigNumberText: View {
    
    var text: String
    
    var body: some View {
        
        Text(text)
            .kerning(-1.0)
            .font(.largeTitle)
            .bold()
            .fontWeight(.black)
            .foregroundColor(Color("TextColor"))
        
    }
}



struct SliderLabelText: View {
    
    var text: String
    
    var body: some View {
    
        Text(text)
            .bold()
            .foregroundColor(Color("TextColor"))
            .frame(width: 35.0)
        
    }
    
}


struct LabelText: View {
    
    var text: String
    
    var body: some View {
        
        Text(text)
            .font(.caption)
            .bold()
            .kerning(1.5)
            .foregroundColor(Color("TextColor"))
    }
}


struct BodyText: View {
    
    var text: String
    
    var body: some View {
        
        Text(text)
            .font(.title3)
            .bold()
            .multilineTextAlignment(.center)
            .lineSpacing(12.0)
    }
}


struct ButtonText: View {
    
    var text: String
    
    var body: some View {
        
        Text(text)
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.accentColor)
            .bold()
            .foregroundColor(Color("TextColor"))
            .cornerRadius(12.0)
        
    }
}


struct ScoreText: View {
    
    var score: Int
    
    var body: some View {
        
        Text(String(score))
            .bold()
            .kerning(-0.2)
            .foregroundColor(Color("TextColor"))
            .font(.title3)
           
    }
}


struct DateText: View {
    
    var date: Date
    
    var body: some View {
        
        Text(date, style: .time)
            .bold()
            .kerning(-0.2)
            .foregroundColor(Color("TextColor"))
            .font(.title3)
           
    }
}


struct BigBoldText: View {
    let text: String
    
    var body: some View {
        Text(text.uppercased())
            .kerning(2.0)
            .foregroundColor(Color("TextColor"))
            .font(.title)
            .fontWeight(.black)
    }
}

#Preview {
    VStack {
        InstructionText(text: "🎯🎯🎯\n PUT THE BULLSEYE AS CLOSE AS YOU CAN TO")
        BigNumberText(text: "999")
        SliderLabelText(text: "99")
        LabelText(text: "score")
        BodyText(text: "You scored 200 points\n🎉🎉🎉")
        ButtonText(text: "Start New Round")
        ScoreText(score: 394234)
        DateText(date: Date())
        BigBoldText(text: "leaderboard")
    }
    .padding()
}

