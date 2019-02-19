//
//  main.swift
//  1927
//
//  Created by myoung on 18/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

public struct Heap<Element> {
    public var elements: [Element]
    public var compare: (Element, Element) -> Bool
    
    init(_ elements: [Element] = [], compare: @escaping (Element, Element) -> Bool) {
        self.elements = elements
        self.compare = compare
        heapBuild()
    }
    
    public var count: Int { return elements.count }
    public var isEmpty: Bool { return elements.isEmpty }
    public var top: Element? { return elements.first }
    
    public mutating func push(_ value: Element) {
        elements.append(value)
        siftUP(elements.count-1)
    }
    
    public mutating func pop() -> Element? {
        if elements.isEmpty { return nil }
        let result = self.top
        elements.swapAt(0, elements.count-1)
        let _ = elements.popLast()
        siftDown(0)
        return result
    }
    
    private mutating func heapBuild() {
        for i in (0 ..< elements.count/2).reversed() {
            siftDown(i)
        }
    }
    
    private mutating func siftDown(_ index: Int) {
        var index = index
        while true {
            let child: Int
            if index*2+1 >= elements.count {
                return
            } else if index*2+2 == elements.count {
                child = index*2+1
            } else {
                child = compare(elements[index*2+1], elements[index*2+2]) ? index*2+1 : index*2+2
            }
            if compare(elements[index], elements[child]) { return }
            elements.swapAt(index, child)
            index = child
        }
    }
    
    private mutating func siftUP(_ index: Int) {
        var index = index
        while true {
            let parent = (index-1)/2
            if index == 0 || compare(elements[parent], elements[index]) {
                return
            }
            elements.swapAt(parent, index)
            index = parent
        }
    }
    
}

var minHeap = Heap<Int>(compare: <)
if let input = readLine() {
    let n = Int(input) ?? 0
    for _ in 0 ..< n {
        if let input = readLine() {
            let value = Int(input) ?? 0
            if value == 0 {
                let res = minHeap.pop()
                print(res == nil ? 0: res ?? 0)
            } else {
                minHeap.push(value)
            }
        }
    }
}
