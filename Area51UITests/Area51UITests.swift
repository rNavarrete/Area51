//
//  Area51UITests.swift
//  Area51UITests
//
//  Created by Rolando Navarrete on 7/23/19.
//

import XCTest

class Area51UITests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // Must launch the application. This makes sure it happens for each test method.
        XCUIApplication().launch()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testPopularHeader() {
      let app = XCUIApplication()
      XCTAssert(app.navigationBars["Popular"].otherElements["Popular"].exists)
    }
}
