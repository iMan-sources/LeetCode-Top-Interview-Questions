//
//  Tests.swift
//  Tests
//
//  Created by AnhLe on 25/03/2022.
//

import XCTest
@testable import LC_134
class Tests: XCTestCase {
    var solution: Solution!
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        solution = Solution()
    }


    func testExample_1() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let  gas = [1,2,3,4,5], cost = [3,4,5,1,2]
        XCTAssertEqual(solution.canCompleteCircuit(gas, cost), 3)
    }
    func testExample_2() throws {
        let gas = [2,3,4], cost = [3,4,3]
        XCTAssertEqual(solution.canCompleteCircuit(gas, cost), -1)
    }
    func testExample_3() throws {
        let gas = [5,1,2,3,4], cost = [4,4,1,5,1]
        XCTAssertEqual(solution.canCompleteCircuit(gas, cost), 4)
    }
    func testExample_4() throws {
        let gas = [2], cost = [2]
        XCTAssertEqual(solution.canCompleteCircuit(gas, cost), 0)
    }


}
