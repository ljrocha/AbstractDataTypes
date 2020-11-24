//
//  QueueTests.swift
//  
//
//  Created by Leandro Rocha on 11/23/20.
//

import XCTest
@testable import AbstractDataTypes

final class QueueTests: XCTestCase {
    
    func testEmptyQueueIsEmptyPropertyReturnsTrue() {
        // given
        let sut = Queue<Int>()
        
        // then
        XCTAssertTrue(sut.isEmpty)
    }
    
    func testNonEmptyQueueIsEmptyPropertyReturnsFalse() {
        // given
        var sut = Queue<Int>()
        
        // when
        sut.enqueue(1)
        
        // then
        XCTAssertFalse(sut.isEmpty)
    }
    
    func testEmptyQueuePeekPropertyReturnsNil() {
        // given
        let sut = Queue<Int>()
        
        // then
        XCTAssertNil(sut.peek)
    }
    
    func testNonEmptyQueuePeekPropertyReturnsFirstValue() {
        // given
        var sut = Queue<Int>()
        
        // when
        sut.enqueue(1)
        sut.enqueue(2)
        
        // then
        XCTAssertEqual(sut.peek, 1)
    }
    
    func testQueueEnqueueMethodInsertsValueToBackOfQueue() {
        // given
        var sut = Queue<Int>()
        
        // when
        sut.enqueue(1)
        sut.enqueue(2)
        
        // then
        XCTAssertNotEqual(sut.peek, 2)
    }
    
    func testEmptyQueueDequeueMethodReturnsNil() {
        // given
        var sut = Queue<Int>()
        
        // then
        XCTAssertNil(sut.dequeue())
    }
    
    func testNonEmptyQueueDequeueMethodRemovesAndReturnsFirstValue() {
        // given
        var sut = Queue<Int>()
        
        // when
        sut.enqueue(1)
        sut.enqueue(2)
        sut.enqueue(3)
        
        // then
        let returnValue = sut.dequeue()
        XCTAssertNotEqual(sut.peek, 1)
        XCTAssertEqual(returnValue, 1)
    }
    
    func testQueueValueSemantics() {
        // given
        var sut = Queue<Int>()
        sut.enqueue(1)
        sut.enqueue(2)
        
        // when
        var otherQueue = sut
        let _ = otherQueue.dequeue()
        
        // then
        XCTAssertNotEqual(sut.peek, otherQueue.peek)
    }
}
