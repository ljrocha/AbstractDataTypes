//
//  LinkedListTests.swift
//  
//
//  Created by Leandro Rocha on 11/23/20.
//

import XCTest
@testable import AbstractDataTypes

final class LinkedListTests: XCTestCase {
    
    func testEmptyListHeadPropertyReturnsNil() {
        // given
        let sut = LinkedList<Int>()
        
        // then
        XCTAssertNil(sut.head)
    }
    
    func testEmptyListTailPropertyReturnsNil() {
        // given
        let sut = LinkedList<Int>()
        
        // then
        XCTAssertNil(sut.tail)
    }
    
    func testEmptyListIsEmptyPropertyReturnsTrue() {
        // given
        let sut = LinkedList<Int>()
        
        // then
        XCTAssertTrue(sut.isEmpty)
    }
    
    func testNonEmptyListIsEmptyPropertyReturnsFalse() {
        // given
        let sut = LinkedList<Int>()
        
        // when
        sut.insertFirst(1)
        
        // then
        XCTAssertFalse(sut.isEmpty)
    }
    
    func testEmptyListFirstPropertyReturnsNil() {
        // given
        let sut = LinkedList<Int>()
        
        // then
        XCTAssertNil(sut.first)
    }
    
    func testNonEmptyListFirstPropertyReturnsFirstValue() {
        // given
        let sut = LinkedList<Int>()
        
        // when
        sut.insertFirst(1)
        sut.insertFirst(2)
        
        // then
        XCTAssertEqual(sut.first, 2)
    }
    
    func testEmptyListLastPropertyReturnsNil() {
        // given
        let sut = LinkedList<Int>()
        
        // then
        XCTAssertNil(sut.last)
    }
    
    func testNonEmptyListLastPropertyReturnsLastValue() {
        // given
        let sut = LinkedList<Int>()
        
        // when
        sut.insertLast(1)
        sut.insertLast(2)
        
        // then
        XCTAssertEqual(sut.last, 2)
    }
    
    func testListInsertFirstMethodInsertsValueToFrontOfList() {
        // given
        let sut = LinkedList<Int>()
        
        // when
        sut.insertLast(1)
        sut.insertLast(2)
        sut.insertFirst(3)
        
        // then
        XCTAssertEqual(sut.first, 3)
    }
    
    func testListInsertLastMethodInsertsValueToEndOfList() {
        // given
        let sut = LinkedList<Int>()
        
        // when
        sut.insertFirst(1)
        sut.insertFirst(2)
        sut.insertLast(3)
        
        // then
        XCTAssertEqual(sut.last, 3)
    }
    
    func testEmptyListRemoveFirstMethodReturnsNil() {
        // given
        let sut = LinkedList<Int>()
        
        // then
        XCTAssertNil(sut.removeFirst())
    }
    
    func testNonEmptyListRemoveFirstMethodReturnsFirstValue() {
        // given
        let sut = LinkedList<Int>()
        
        // when
        sut.insertFirst(1)
        sut.insertFirst(2)
        sut.insertFirst(3)
        
        // then
        XCTAssertEqual(sut.removeFirst(), 3)
    }
    
    func testEmptyListRemoveLastMethodReturnsNil() {
        // given
        let sut = LinkedList<Int>()
        
        // then
        XCTAssertNil(sut.removeLast())
    }
    
    func testNonEmptyListRemoveLastMethodReturnsLastValue() {
        // given
        let sut = LinkedList<Int>()
        
        // when
        sut.insertLast(1)
        sut.insertLast(2)
        sut.insertLast(3)
        
        // then
        XCTAssertEqual(sut.removeLast(), 3)
    }
}
