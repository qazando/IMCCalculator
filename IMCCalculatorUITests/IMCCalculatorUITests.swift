//
//  IMCCalculatorUITests.swift
//  IMCCalculatorUITests
//
//  Created by Eduardo Finotti on 27/05/21.
//  Copyright © 2021 Eduardo Finotti. All rights reserved.
//

import XCTest

class IMCCalculatorUITests: XCTestCase {

    let app = XCUIApplication()
    
    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    override func tearDownWithError() throws {
    }
    
    override func setUp() {
        app.launch()
    }
    
    func testExample2() throws {
        app.textFields["campo_nome"].tap()
        app.textFields["campo_nome"].typeText("Eduardo Finotti")
        
        app.textFields["campo_altura"].tap()
        app.textFields["campo_altura"].typeText("1.79")
        
        app.textFields["campo_peso"].tap()
        app.textFields["campo_peso"].typeText("84")
        
        app.textFields["campo_idade"].tap()
        app.textFields["campo_idade"].typeText("29")

        app.buttons["botao_calcular"].tap()
        
        XCTAssert(app.staticTexts["26.22"].exists)
    }

    func testExample() throws {
        app.textFields["campo_nome"].tap()
        app.textFields["campo_nome"].typeText("Eduardo Finotti")
        
        app.textFields["campo_altura"].tap()
        app.textFields["campo_altura"].typeText("1.79")
        
        app.textFields["campo_peso"].tap()
        app.textFields["campo_peso"].typeText("84")
        
        app.textFields["campo_idade"].tap()
        app.textFields["campo_idade"].typeText("29")

        app.buttons["botao_calcular"].tap()
        
        XCTAssert(app.staticTexts["26.22"].exists)
    }

}
