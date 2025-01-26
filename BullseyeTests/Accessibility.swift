//
//  Untitled.swift
//  Bullseye
//
//  Created by Алексей Ряжев on 1/27/25.
//

import Foundation


public enum Accessibility {
    
    public enum Objects {
        public static let view = "View"
        public static let text = "Text"
        public static let button = "Button"
    }
    
    public enum Elements {
        public enum Slider {
            public static let view = "Slider" + Objects.view
        }
        public enum Buttons {
            public static let hitMeButton = "HitMe" + Objects.button + Objects.view
            public static let newRoundButton = "StartNewRound" + Objects.button
        }
        public enum Alerts {
            public static let hitMeAlert = "HitMeAlert" + Objects.view
        }
        public enum TextViews {
            public static let instructionText = "SlidersValue" + Objects.text + Objects.view
            public static let bigNumberText = "BigNumber" + Objects.text + Objects.view
            public static let bodyText = "Score" + Objects.text + Objects.view
            public static let newRoundButtonText = "NewRound" + Objects.button + Objects.text + Objects.view
        }
    }
    
}
