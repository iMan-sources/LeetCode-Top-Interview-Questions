//
//  UnitTest.swift
//  UnitTest
//
//  Created by AnhLe on 20/03/2022.
//

import XCTest
@testable import LC_130
class UnitTest: XCTestCase {
    
    var solution: Solution!
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        solution = Solution()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample_1() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        var board:  [[Character]] = [["X","X","X","X"],["X","O","O","X"],["X","X","O","X"],["X","O","X","X"]]
        solution.solve(&board)
        let result: [[Character]] = [["X","X","X","X"],["X","X","X","X"],["X","X","X","X"],["X","O","X","X"]]
        XCTAssertEqual(board, result)
    }
    
    func testExample_2() throws {
        var board:  [[Character]] = [["O","O","O","O","X","X"],["O","O","O","O","O","O"],["O","X","O","X","O","O"],["O","X","O","O","X","O"],["O","X","O","X","O","O"],["O","X","O","O","O","O"]]
        solution.solve(&board)
        let result: [[Character]] = [["O","O","O","O","X","X"],["O","O","O","O","O","O"],["O","X","O","X","O","O"],["O","X","O","O","X","O"],["O","X","O","X","O","O"],["O","X","O","O","O","O"]]
        XCTAssertEqual(board, result)
    }
    
    func testExample_3() throws {
        var board:  [[Character]] = [["X","O","X","O","X","O","O","O","X","O"],["X","O","O","X","X","X","O","O","O","X"],["O","O","O","O","O","O","O","O","X","X"],["O","O","O","O","O","O","X","O","O","X"],["O","O","X","X","O","X","X","O","O","O"],["X","O","O","X","X","X","O","X","X","O"],["X","O","X","O","O","X","X","O","X","O"],["X","X","O","X","X","O","X","O","O","X"],["O","O","O","O","X","O","X","O","X","O"],["X","X","O","X","X","X","X","O","O","O"]]
        solution.solve(&board)
        let result: [[Character]] = [["X","O","X","O","X","O","O","O","X","O"],["X","O","O","X","X","X","O","O","O","X"],["O","O","O","O","O","O","O","O","X","X"],["O","O","O","O","O","O","X","O","O","X"],["O","O","X","X","O","X","X","O","O","O"],["X","O","O","X","X","X","X","X","X","O"],["X","O","X","X","X","X","X","O","X","O"],["X","X","O","X","X","X","X","O","O","X"],["O","O","O","O","X","X","X","O","X","O"],["X","X","O","X","X","X","X","O","O","O"]]
        XCTAssertEqual(board, result)
    }
    
    func testExample_4() throws {
        var board:  [[Character]] = [["O","X","X","O","X"],["X","O","O","X","O"],["X","O","X","O","X"],["O","X","O","O","O"],["X","X","O","X","O"]]
        solution.solve(&board)
        let result: [[Character]] = [["O","X","X","O","X"],["X","X","X","X","O"],["X","X","X","O","X"],["O","X","O","O","O"],["X","X","O","X","O"]]
        XCTAssertEqual(board, result)
    }
    
    func testExample_5() throws {
        var board:  [[Character]] = [["O","X","O","O","X","X"],["O","X","X","X","O","X"],["X","O","O","X","O","O"],["X","O","X","X","X","X"],["O","O","X","O","X","X"],["X","X","O","O","O","O"]]
        solution.solve(&board)
        let result: [[Character]] = [["O","X","O","O","X","X"],["O","X","X","X","O","X"],["X","O","O","X","O","O"],["X","O","X","X","X","X"],["O","O","X","O","X","X"],["X","X","O","O","O","O"]]
        XCTAssertEqual(board, result)
    }
    
    
    
    
    
    
    

//    func testPerformanceExample() throws {
//        // This is an example of a performance test case.
//        measure {
//            // Put the code you want to measure the time of here.
//        }
//    }

}
