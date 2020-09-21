import XCTest
@testable import EthereumAddress

class EthereumAddressTests: XCTestCase {

    func testChecksumAddress() {
        let input = "0x8804C99b33107Edee9A1176512BFC5BC0fDffa32"
        let output = EthereumAddress.toChecksumAddress(input);
        XCTAssert(output == "0x8804C99b33107Edee9A1176512BFC5BC0fDffa32", "Failed to checksum address")
    }
    
    func testChecksumAddressParsing() {
        let input = "0x8804C99b33107Edee9A1176512BFC5BC0fDffa32"
        let addr = EthereumAddress(input);
        XCTAssert(addr != nil);
        let invalidInput = "0x8804C99b33107Edee9A1176512BFC5BC0fDff2a32"
        let invalidAddr = EthereumAddress(invalidInput);
        XCTAssert(invalidAddr == nil);
    }

}
