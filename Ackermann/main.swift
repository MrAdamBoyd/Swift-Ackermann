//
//  main.swift
//  Ackermann
//
//  Created by Adam Boyd on 2016-02-05.
//  Copyright © 2016 Adam. All rights reserved.
//

import Foundation

func ackermann(m: Int32, n: Int32) -> UnsafeMutablePointer<Int32> {
    var pointer = UnsafeMutablePointer<Int32>.allocate(capacity: 1)
    
    if m == 0 {
        pointer.initialize(to: n + 1)
    } else if n == 0 {
        pointer = ackermann(m: m - 1, n: 1)
    } else {
        pointer = ackermann(m: m - 1, n: ackermann(m: m, n: n - 1).pointee)
    }
    
    return pointer
}

for loopCounter: Int32 in 0...5 {
    for innerLoopCounter: Int32 in 0...5 {
        print("ackermann(\(loopCounter), \(innerLoopCounter)) is: \(ackermann(m: loopCounter, n: innerLoopCounter).pointee)")
    }
}
