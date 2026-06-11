//
//  main.swift
//  Aritmethic
//
//  Created by Mau on 10/6/26.
//

import Foundation

func add(x:Int, y: Int) -> String {
    return "\(x) + \(y) = \(x+y)"
}


func division (x: Int, y :Int) -> String {
    y == 0 ? "Division no posible para 0" : "\(x) / \(y) = \(x/y)" //un ternario en swift
}



print("Artithmetic Demo")

var x = 2
var y = 3

print(add(x: 7, y: 9))

x = 2
y = 3
