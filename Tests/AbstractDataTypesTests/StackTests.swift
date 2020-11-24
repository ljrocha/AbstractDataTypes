//
//  StackTests.swift
//  
//
//  Created by Leandro Rocha on 11/23/20.
//

import XCTest
@testable import AbstractDataTypes

final class StackTests: XCTestCase {
    
    func testEmptyStackIsEmptyPropertyReturnsTrue() {
        // given
        let sut = Stack<Int>()
        
        // then
        XCTAssertTrue(sut.isEmpty)
    }
    
    func testNonEmptyStackIsEmptyPropertyReturnsFalse() {
        // given
        var sut = Stack<Int>()
        
        // when
        sut.push(1)
        
        // then
        XCTAssertFalse(sut.isEmpty)
    }
    
    func testEmptyStackPeekPropertyReturnsNil() {
        // given
        let sut = Stack<Int>()
        
        // then
        XCTAssertNil(sut.peek)
    }
    
    func testNonEmptyStackPeekPropertyReturnsTopValue() {
        // given
        var sut = Stack<Int>()
        
        // when
        sut.push(1)
        sut.push(2)
        
        // then
        XCTAssertEqual(sut.peek, 2)
    }
    
    func testStackPushMethodInsertsValueToTopOfStack() {
        // given
        var sut = Stack<Int>()
        
        // when
        sut.push(1)
        sut.push(2)
        
        // then
        XCTAssertNotEqual(sut.peek, 1)
    }
    
    func testEmptyStackPopMethodReturnsNil() {
        // given
        var sut = Stack<Int>()
        
        // then
        XCTAssertNil(sut.pop())
    }
    
    func testNonEmptyStackPopMethodRemovesAndReturnsTopValue() {
        // given
        var sut = Stack<Int>()
        
        // when
        sut.push(1)
        sut.push(2)
        sut.push(3)
        
        // then
        let returnValue = sut.pop()
        XCTAssertNotEqual(sut.peek, 3)
        XCTAssertEqual(returnValue, 3)
    }
}
