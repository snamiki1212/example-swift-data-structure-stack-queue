//
//  Queue.swift
//  stackqueue
//
//  Created by shunnamiki on 2021/08/04.
//

import Foundation

public final class Queue<E>: Sequence {
    fileprivate class Node<E> {
        fileprivate var item: E;
        fileprivate var next: Node<E>?
        fileprivate init(item: E, next: Node<E>? = nil) {
            self.item = item
            self.next = next
        }
    }
    
    fileprivate var head: Node<E>? = nil
    fileprivate var tail: Node<E>? = nil
    
    private(set) var count = 0;
    
    public init(){}
    
    public func enqueue(item: E){
        let node = Node(item: item, next: nil)
        if isEmpty() {
            head = node;
            tail = node;
        } else {
            tail?.next = node
            tail = tail?.next
        }
        count += 1
    }
    
    public func dequeue() -> E? {
        if isEmpty() { return nil }
        
        let dequeued = head
        head = head?.next
        return dequeued?.item
    }
    
    public func peek() -> E? {
        return head?.item;
    }
    
    public func isEmpty() -> Bool {
        return head == nil
    }
    
    public struct QueueIterator<E>: IteratorProtocol {
        private var current: Node<E>?
        
        fileprivate init(_ first: Node<E>?) {
            self.current = first
        }
        
        public mutating func next() -> E? {
            if let item = current?.item {
                current = current?.next
                return item
            } else {
                return nil;
            }
        }
        
    }
    
    public func makeIterator() -> QueueIterator<E> {
        return QueueIterator(head)
    }
    
}
