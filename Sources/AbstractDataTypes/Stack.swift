//
//  Stack.swift
//  
//
//  Created by Leandro Rocha on 11/19/20.
//

import Foundation

/// A stack is a last-in first-out (LIFO) linear data structure.
///
/// A stack ensures that element insertions and deletions are always made at one end, known as the top.
///
/// The main operations of the stack are `push(_:)` and `pop()`.
/// *Pushing* an element on to the stack will insert the element at the top of the stack.
/// *Popping* an element from the stack will remove the element at the top of the stack.
public struct Stack<Element> {
    
    private var elements: [Element] = []
    
    /// A Boolean value indicating whether the stack is empty.
    public var isEmpty: Bool {
        elements.isEmpty
    }
    
    /// The element at the top of the stack.
    ///
    /// If the stack is empty, the value of this property is `nil`.
    public var peek: Element? {
        elements.last
    }
    
    /// Creates a new, empty stack.
    public init() {}
    
    /// Inserts an element to the top of the stack.
    /// - Complexity: O(1) on average, over many calls to `push(_:)` on the same stack.
    /// - Parameter element: The element to insert at the top of the stack.
    public mutating func push(_ element: Element) {
        elements.append(element)
    }
    
    /// Removes and returns the top element from the stack.
    /// - Complexity: O(1)
    /// - Returns: The top element of the stack if the stack is not empty; otherwise, `nil`.
    public mutating func pop() -> Element? {
        elements.popLast()
    }
}
