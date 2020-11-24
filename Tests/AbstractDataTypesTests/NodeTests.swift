//
//  NodeTests.swift
//  
//
//  Created by Leandro Rocha on 11/23/20.
//

import XCTest
@testable import AbstractDataTypes

final class NodeTests: XCTestCase {
    
    func testSingleArgumentNodeInitializerSetsValuePropertyToSuppliedValue() {
        // given
        let sut = Node(value: 1)
        
        // then
        XCTAssertEqual(sut.value, 1)
    }
    
    func testSingleArgumentNodeInitializerSetsNextPropertyToNil() {
        // given
        let sut = Node(value: 1)
        
        // then
        XCTAssertNil(sut.next)
    }
    
    func testTwoArgumentNodeInitializerSetsNextPropertyToNonNilValue() {
        // given
        let sut = Node(value: 1, next: Node<Int>(value: 2))
        
        // then
        XCTAssertNotNil(sut.next)
    }
}
