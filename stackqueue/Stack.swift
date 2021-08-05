//
//  Stack.swift
//  stackqueue
//
//  Created by shunnamiki on 2021/08/04.
//

import Foundation


public final class Stack<E>: Sequence {
    fileprivate class Node<E> {
        fileprivate var item: E
        fileprivate var next: Node<E>?
        fileprivate init(item: E, next: Node<E>? = nil) {
            self.item = item
            self.next = next
        }
    }
    
    private(set) var count: Int = 0
    fileprivate var last: Node<E>? = nil
    
    public init(){}
    
    public func push(item: E) {
        last = Node<E>(item: item, next: last)
        count += 1
    }
    
    public func pop() -> E? {
        if let popped = last {
            last = popped.next
            count -= 1
            return popped.item
        }
        return nil
    }
    
    public func peek() -> E? {
        if let peeped = last {
            return peeped.item
        }
        return nil
    }
    
    public func isEmpty() -> Bool {
        return last == nil
    }
    
    public struct StackIterator<E>: IteratorProtocol {
        private var current: Node<E>?
        
        fileprivate init(_ first: Node<E>?) {
            self.current = first
        }
        
        public mutating func next() -> E? {
            if let item = current?.item {
                current = current?.next
                return item
            } else {
                return nil
            }
        }
    }
    
    public func makeIterator() -> StackIterator<E> {
        return StackIterator(last)
    }
    
}
