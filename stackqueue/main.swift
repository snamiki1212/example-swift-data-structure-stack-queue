//
//  main.swift
//  stackqueue
//
//  Created by shunnamiki on 2021/08/04.
//

import Foundation

func doStack(){
    var stack = Stack<String>()
    stack.push(item: "Google Top Page")
    stack.push(item: "Searched List Page")
    stack.push(item: "Article Page")

    print("START STACK")
    print(">", stack.peek())
    print(">", stack.pop())
    print(">", stack.push(item: "Another Article Page"))
    print(">", stack.peek())
    print(">", stack.pop())
    print(">", stack.pop())
    print(">", stack.pop())
    print(">", stack.pop())
}


func doQueue(){
    var queue = Queue<String>()
    queue.enqueue(item: "Google Top Page")
    queue.enqueue(item: "Searched List Page")
    queue.enqueue(item: "Article Page")

    print("START QUEUE")
    print(">", queue.peek())
    print(">", queue.dequeue())
    print(">", queue.enqueue(item: "Another Article Page"))
    print(">", queue.peek())
    print(">", queue.dequeue())
    print(">", queue.dequeue())
    print(">", queue.dequeue())
    print(">", queue.dequeue())
    
    
    
}



//Int.random(in: 0...1) == 1 ? doStack() : doQueue();
print("--------")
doStack()
print("--------")
doQueue()
print("--------")
