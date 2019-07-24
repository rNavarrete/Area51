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

  func testBacktoSubreddits() {
    let app = XCUIApplication()
    let subredditsButton = app.navigationBars["Popular"].buttons["Subreddits"]
    subredditsButton.tap()
    let tablesQuery = XCUIApplication().tables
    XCTAssert(tablesQuery.staticTexts["Main Subreddits"].exists)
    XCTAssert(tablesQuery.staticTexts["Default Subreddits"].exists)
  }

  func testSettingsElmtsPresent() {
    let app = XCUIApplication()
    app.tabBars.buttons["Settings"].tap()

    let tablesQuery = app.tables
    tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["Changelog"]/*[[".cells.staticTexts[\"Changelog\"]",".staticTexts[\"Changelog\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
    app.buttons["Done"].tap()

    tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["Contributors"]/*[[".cells.staticTexts[\"Contributors\"]",".staticTexts[\"Contributors\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
    app.navigationBars["Contributors"].buttons["Settings"].tap()

    tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["GitHub"]/*[[".cells.staticTexts[\"GitHub\"]",".staticTexts[\"GitHub\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
    app.buttons["Done"].tap()

  }
}
