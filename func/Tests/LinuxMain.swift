import XCTest

import funcTests

var tests = [XCTestCaseEntry]()
tests += funcTests.allTests()
XCTMain(tests)
