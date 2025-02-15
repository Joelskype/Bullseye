

import XCTest


final class ContentViewUITests: XCTestCase {
    let app = XCUIApplication()
    lazy var contentViewPage = ContentViewPageObject(app: app)
    
    override func setUp() {
        continueAfterFailure = false
        app.launch()
        print("App is started")
    }
    
    func testHitMeButtonTap() {
        contentViewPage
            .tapHitMeButton()
    }
    
    func testSliderMove() {
        contentViewPage
            .changeSliderPosition()
    }
    
    func testCheckButtons() {
        
        let buttons = app.buttons.allElementsBoundByIndex

        for (index, button) in buttons.enumerated() {
            print("Button \(index): \(button.label)")
        }
        
    }
    
}
