//
//  ImportBlockDetectorTests.swift
//  Snowonder
//
//  Created by Aliaksei Karetski on 10.07.17.
//  Copyright © 2017 Karetski. All rights reserved.
//

import XCTest

@testable import ImportArtisan

class ImportBlockDetectorTests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testIfDefinePattern() {
        assert("#ifdef WBCF_MOVIE_UPLOAD_TEST\n".matches(pattern: ImportBlockDetector.Constant.ifDefineBegin.declarationPattern))
        assert("#ifdef WBCF_MOVIE_UPLOAD_TEST \n".matches(pattern: ImportBlockDetector.Constant.ifDefineBegin.declarationPattern))
        assert("#endif \n".matches(pattern: ImportBlockDetector.Constant.ifDefineEnd.declarationPattern))
        assert("#endif\n".matches(pattern: ImportBlockDetector.Constant.ifDefineEnd.declarationPattern))
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
