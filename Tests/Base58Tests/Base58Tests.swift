import XCTest
@testable import Base58


final class Base58Tests: XCTestCase {
  func testEncodingToBase58() {
    do {
      let bytes = "Hello, World!".makeBytes()
      let encoded = encode(bytes)
      let str = try String(encoded)
      XCTAssertEqual(str, "72k1xXWG59fYdzSNoA")
    } catch {
      XCTFail()
    }
  }

  func testDecodingToBase58() {
    do {
      let bytes = "72k1xXWG59fYdzSNoA".makeBytes()
      let decoded = try decode(bytes)
      let str = try String(decoded)
      XCTAssertEqual(str, "Hello, World!")
    } catch {
      XCTFail()
    }
  }

  func testBase58Checking() {
    do {
      let bytes = "Hello, World!".makeBytes()
      let encoded = check(bytes)
      let str = try String(encoded)
      XCTAssertEqual(str, "gTazoqFvnegwaKM8v2MZsVw")
    } catch {
      XCTFail()
    }
  }

  func testBase58Unchecking() {
    do {
      let bytes = "gTazoqFvnegwaKM8v2MZsVw".makeBytes()
      let decoded = try uncheck(bytes)
      let str = try String(decoded)
      XCTAssertEqual(str, "Hello, World!")
    } catch {
      XCTFail()
    }
  }

  static var allTests = [
    ("testEncodingToBase58", testEncodingToBase58),
    ("testDecodingToBase58", testDecodingToBase58),
    ("testBase58Checking", testBase58Checking),
    ("testBase58Unchecking", testBase58Unchecking),
  ]
}