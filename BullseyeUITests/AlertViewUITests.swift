

import XCTest


final class AlertViewUITests: XCTestCase {
    let app = XCUIApplication()
    lazy var alertViewPage = AlertViewPageObject(app: app)
    
    override func setUp() {
        continueAfterFailure = true
        app.launch()
    }
    
    func testAlertElements() {
        alertViewPage
            .checkAlertElements()
    }
    
    func testNewRoundButton() {
        alertViewPage
            .checkNewRoundButton()
    }
    
    
}
