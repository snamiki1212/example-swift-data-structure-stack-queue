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

    print(">", stack.peep())
    print(">", stack.pop())
    print(">", stack.push(item: "Another Article Page"))
    print(">", stack.peep())
    print(">", stack.pop())
    print(">", stack.pop())
    print(">", stack.pop())
    print(">", stack.pop())
}


