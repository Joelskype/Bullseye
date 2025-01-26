//
//  ContentViewPage.swift
//  Bullseye
//
//  Created by Алексей Ряжев on 2/8/25.
//

import XCTest
@testable import Bullseye


final class ContentViewPageObject {
    private let app: XCUIApplication
    
    init(app: XCUIApplication) {
        self.app = app
    }
    
    //Elements
    
    var hitMeButton: XCUIElement {
        app.buttons[Accessibility.Elements.Buttons.hitMeButton]
    }
    
    
    //Actions
        
    func tapHitMeButton() {
        hitMeButton.tap()
        
        
        let alert = app.otherElements[Accessibility.Elements.Alerts.hitMeAlert]
        XCTAssertTrue(alert.exists)
    }
    
    
    
}
