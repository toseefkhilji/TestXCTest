//
//  TestXCTestUITests.swift
//  TestXCTestUITests
//
//  Created by Toseef Khilji on 01/05/18.
//  Copyright © 2018 Toseef Khilji. All rights reserved.
//

import XCTest

class TestXCTestUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func waiterResultWithExpextation(_ element: XCUIElement) -> XCTWaiter.Result {
        let myPredicate = NSPredicate(format: "exists == true")
        let myExpectation = expectation(for: myPredicate, evaluatedWith: element,
                                        handler: nil)
        
        let result = XCTWaiter().wait(for: [myExpectation], timeout: 5)
        return result
    }
    
    func testExample() {
        // Use recording to get started writing UI tests.
        
        
        let app = XCUIApplication()
       let button =  app.buttons["Button"]
        button.tap()
        
//        XCTAssertTrue(waiterResultWithExpextation(button) == .completed)

        let nextButton = app.buttons["Next"]
        nextButton.tap()
//        XCTAssertTrue(waiterResultWithExpextation(nextButton) == .completed)

        let secondButton = app.navigationBars["Third"].buttons["Second"]
        secondButton.tap()
        nextButton.tap()
        secondButton.tap()
        app.navigationBars["Second"].buttons["Home"].tap()
//        let app = XCUIApplication()
//        app.buttons["Button"].tap()
//        app.buttons["Next"].tap()
//        XCUIApplication().navigationBars.buttons.element(boundBy: 0).tap()
//
//        let homeButton = app.navigationBars["Second"].buttons["Home"]
//        homeButton.tap()
//        }
    }
    
    func testExample1() {
        // Use recording to get started writing UI tests.
        
        
        let app = XCUIApplication()
        let button =  app.buttons["Button"]
        button.tap()
        
        //        XCTAssertTrue(waiterResultWithExpextation(button) == .completed)
        
        let nextButton = app.buttons["Next"]
        nextButton.tap()
        //        XCTAssertTrue(waiterResultWithExpextation(nextButton) == .completed)
        
        let secondButton = app.navigationBars["Third"].buttons["Second"]
        secondButton.tap()
        nextButton.tap()
        secondButton.tap()
        app.navigationBars["Second"].buttons["Home"].tap()
        //        let app = XCUIApplication()
        //        app.buttons["Button"].tap()
        //        app.buttons["Next"].tap()
        //        XCUIApplication().navigationBars.buttons.element(boundBy: 0).tap()
        //
        //        let homeButton = app.navigationBars["Second"].buttons["Home"]
        //        homeButton.tap()
        //        }
    }
}
