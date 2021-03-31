import XCTest

import Base58Tests

var tests = [XCTestCaseEntry]()
tests += Base58Tests.allTests()
XCTMain(tests)