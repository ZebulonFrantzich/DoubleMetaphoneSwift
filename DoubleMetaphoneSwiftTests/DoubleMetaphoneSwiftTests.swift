//
//  DoubleMetaphoneSwiftTests.swift
//  DoubleMetaphoneSwiftTests
//
//  Created by Zebulon Frantzich on 3/17/17.
//  Copyright © 2017 Zebulon Frantzich. All rights reserved.
//

import XCTest
@testable import DoubleMetaphoneSwift

class DoubleMetaphoneSwiftTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testOneWordCalculation() {
        let testPhrase = "Sauron"
        guard let (primary, secondary) = DoubleMetaphoneSwift.calculate(input: testPhrase) else {
            XCTFail()
            return
        }
        
        XCTAssertTrue(primary == "SRN")
        XCTAssertTrue(secondary == "SRN")
    }
    
    func testTwoWordCalculation() {
        let testPhrase = "One Ring"
        guard let (primary, secondary) = DoubleMetaphoneSwift.calculate(input: testPhrase) else {
            XCTFail()
            return
        }
        
        XCTAssertTrue(primary == "ANRN")
        XCTAssertTrue(secondary == "ANRN")
    }
    
    func testSentenceCalculation() {
        let testPhrase = "One Ring to rule them all."
        guard let (primary, secondary) = DoubleMetaphoneSwift.calculate(input: testPhrase) else {
            XCTFail()
            return
        }
        
        XCTAssertTrue(primary == "ANRN")
        XCTAssertTrue(secondary == "ANRN")
    }
    
    func testPhraseCalculation() {
        let testPhrase = "Three Rings for the Elven-kings under the sky, Seven for the Dwarf-lords in their halls of stone, Nine for Mortal Men doomed to die, One for the Dark Lord on his dark throne In the Land of Mordor where the Shadows lie. One Ring to rule them all, One Ring to find them, One Ring to bring them all and in the darkness bind them In the Land of Mordor where the Shadows lie."
        guard let (primary, secondary) = DoubleMetaphoneSwift.calculate(input: testPhrase) else {
            XCTFail()
            return
        }
        
        XCTAssertTrue(primary == "0RRN")
        XCTAssertTrue(secondary == "TRRN")
    }
}
