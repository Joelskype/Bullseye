//
//  AlertViewPage.swift
//  BullseyeTests
//
//  Created by Алексей Ряжев on 2/8/25.
//

import XCTest
@testable import Bullseye


final class AlertViewPageObject {
    
    private let app: XCUIApplication
    
    init(app: XCUIApplication) {
        self.app = app
    }

    //Elements
    
    var alert: XCUIElement {
        app.otherElements[Accessibility.Elements.Alerts.hitMeAlert]
    }
    
    var hitMeButton: XCUIElement {
        app.buttons[Accessibility.Elements.Buttons.hitMeButton]
    }
    
    var instructionText: XCUIElement {
        app.staticTexts[Accessibility.Elements.TextViews.instructionText]
    }
    
    var bigNumberText: XCUIElement {
        app.staticTexts[Accessibility.Elements.TextViews.bigNumberText]
    }
    
    var bodyText: XCUIElement {
        app.staticTexts[Accessibility.Elements.TextViews.bodyText]
    }
    
    var newRoundButton: XCUIElement {
        app.buttons[Accessibility.Elements.Buttons.newRoundButton]
    }
    
    
    
    //Actions
    
    func checkAlertElements() {
    
        hitMeButton.tap()
        
        let alert = alert
        XCTAssertTrue(alert.isHittable)
        
        let instructionText = instructionText
        XCTAssertTrue(instructionText.exists)
        XCTAssertEqual(instructionText.label, "The slider's value is".uppercased())
        
        let bigNumberText = bigNumberText
        XCTAssertTrue(bigNumberText.exists)
//        XCTAssertEqual(bigNumberText.label, text)
        
        _ = bodyText
        XCTAssertTrue(bigNumberText.exists)
//        XCTAssertEqual(bodyText.label, )
        
        let newRoundButton = newRoundButton
        XCTAssertTrue(newRoundButton.exists)
        XCTAssertEqual(newRoundButton.label, "Start New Round")
    }
    
    func checkBNTNotEqualPrevious() {
        
    }
    
    func checkPushNewRoundButtom() {
        
    }
}
