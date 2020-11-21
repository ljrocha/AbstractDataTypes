//
//  Queue.swift
//  
//
//  Created by Leandro Rocha on 11/19/20.
//

import Foundation

/// A queue is a first-in first-out (FIFO) linear data structure.
///
/// A queue ensures that elements are accessed in the order they are inserted.
///
/// The main operations of the queue are `enqueue(_:)` and `dequeue()`.
/// *Enqueued* elements are inserted to the end of the queue.
/// *Dequeued* elements are removed from the start of the queue.
public struct Queue<Element> {
    
    private let list = LinkedList<Element>()
    
    /// A Boolean value indicating whether the queue is empty.
    public var isEmpty: Bool {
        list.isEmpty
    }
    
    /// The element at the front of the queue.
    ///
    /// If the queue is empty, the value of this property is `nil`.
    public var peek: Element? {
        list.first
    }
    
    /// Creates a new, empty queue.
    public init() {}
    
    /// Inserts an element to the back of the queue.
    /// - Complexity: O(1)
    /// - Parameter element: The element to insert at the back of the queue.
    public mutating func enqueue(_ element: Element) {
        list.insertLast(element)
    }
    
    /// Removes and returns the first element from the queue.
    /// - Complexity: O(1)
    /// - Returns: The first element of the queue if the queue is not empty; otherwise, `nil`.
    public mutating func dequeue() -> Element? {
        list.removeFirst()
    }
}
