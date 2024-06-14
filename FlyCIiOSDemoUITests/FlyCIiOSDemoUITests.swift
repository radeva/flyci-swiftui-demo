//
//  FlyCIiOSDemoUITests.swift
//  FlyCIiOSDemoUITests
//
//  Created by Veselina Radeva on 13.06.24.
//

import XCTest

final class FlyCIiOSDemoUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testNextActivityButtonExists() throws {
        let app = XCUIApplication()
        app.launch()
        
        let nextActivityButton = app.buttons["Next activity"]
        XCTAssertTrue(nextActivityButton.exists, "The button should be displayed on the screen")
    }
    
    func testActivityChangesOnTap() throws {
        let app = XCUIApplication()
        app.launch()
        
        let nextActivityButton = app.buttons["Next activity"]
        let activityBeforeTap = app.staticTexts["activityText"].label
        nextActivityButton.tap()
        let activityAfterTap = app.staticTexts["activityText"].label
        XCTAssertNotEqual(activityBeforeTap, activityAfterTap)
    }
}
