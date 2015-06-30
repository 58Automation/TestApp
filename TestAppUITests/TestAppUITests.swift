//
//  TestAppUITests.swift
//  TestAppUITests
//
//  Created by vigoss on 15/6/23.
//
//

import Foundation
import XCTest

class TestAppUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample1() {
        let app = XCUIApplication()
        let textfield1TextField = app.textFields["TextField1"]
        textfield1TextField.tap()
        textfield1TextField.typeText("3")
        
        let textfield2TextField = app.textFields["TextField2"]
        textfield2TextField.tap()
        textfield2TextField.typeText("2")
        app.buttons["ComputeSumButton"].tap()
        
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testExample2() {
        let app = XCUIApplication()
        app.buttons["show alert"].tap()
        app.alerts["Cool title"].collectionViews.buttons["OK"].tap()
        app.buttons["contact alert"].tap()
        app.alerts["“TestApp” Would Like to Access Your Contacts"].collectionViews.buttons["OK"].tap()
        app.buttons["location alert"].tap()
        app.sliders["AppElem"].tap()
        app.buttons["Test Gesture"].tap()
        
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
}
