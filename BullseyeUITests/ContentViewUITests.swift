

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
}
