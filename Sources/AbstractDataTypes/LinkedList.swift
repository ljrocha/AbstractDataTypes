//
//  LinkedList.swift
//  
//
//  Created by Leandro Rocha on 11/19/20.
//

import Foundation

/// A `node` object holds a value and a reference to the next `node`.
public class Node<Value> {
    
    /// The value stored by the `node` object.
    public var value: Value
    
    /// A reference to the next `node` object in the collection.
    ///
    /// If this `node` object is the only/last object in the collection, the value of this property is `nil`.
    public var next: Node?
    
    /// Creates a new `node` object.
    /// - Parameters:
    ///   - value: The value to store in this `node` object.
    ///   - next: A reference to the next `node` object in the collection.
    public init(value: Value, next: Node? = nil) {
        self.value = value
        self.next = next
    }
}

/// A linked list is a linear unidirectional data structure that consists of objects where each object points to the next object in the list.
///
/// A linked list manages a collection of objects, known as *nodes*.
/// Each `node` is responsible for holding data and the reference to the next `node` in the list.
///
/// An advantage to using a linked list as opposed to an `Array` is that inserting and removing objects from the front of the list is done in constant-time.
public class LinkedList<Value> {
    
    private var head: Node<Value>?
    
    private var tail: Node<Value>?
    
    /// A Boolean value indicating whether the list is empty.
    public var isEmpty: Bool {
        head == nil
    }
    
    /// The element at the front of the list.
    ///
    /// If the list is empty, the value of this property is `nil`.
    public var first: Value? {
        head?.value
    }
    
    /// The element at the end of the list.
    ///
    /// If the list is empty, the value of this property is `nil`.
    public var last: Value? {
        tail?.value
    }
    
    /// Creates a new, empty list.
    public init() {}
    
    /// Inserts a value at the front of the list.
    /// - Complexity: O(1)
    /// - Parameter value: The value to insert at the front of the list.
    public func insertFirst(_ value: Value) {
        head = Node(value: value, next: head)
        if tail == nil {
            tail = head
        }
    }
    
    /// Inserts a value at the end of the list.
    /// - Complexity: O(1)
    /// - Parameter value: The value to insert at the end of the list.
    public func insertLast(_ value: Value) {
        guard !isEmpty else {
            insertFirst(value)
            return
        }
        
        tail!.next = Node(value: value)
        tail = tail!.next
    }
    
    /// Removes and returns the value at the front of the list.
    /// - Complexity: O(1)
    /// - Returns: The value at the front of the list if the list is not empty; otherwise, `nil`.
    public func removeFirst() -> Value? {
        guard !isEmpty else { return nil }
        
        let returnValue = head!.value
        head = head?.next
        if head == nil {
            tail = nil
        }
        return returnValue
    }
    
    /// Removes and returns the value at the end of the list.
    /// - Complexity: O(*n*) where *n* is the number of `node` objects in the list.
    /// - Returns: The value at the end of the list if the list is not empty; otherwise, `nil`.
    public func removeLast() -> Value? {
        guard let head = head else { return nil }
        guard head.next != nil else { return removeFirst() }
        
        var prev = head
        var current = head
        
        while let next = current.next {
            prev = current
            current = next
        }
        
        prev.next = nil
        tail = prev
        
        return current.value
    }
}
