//
//  main.swift
//  1202
//
//  Created by 명수창 on 2021/11/01.
//  Copyright © 2021 myoung. All rights reserved.
//

import Foundation

let nk = readLine()!.split(separator: " ").map { Int(String($0))! }
var jams = [(m: Int, v: Int)]()
var backs = [Int]()

for _ in 0..<nk[0] {
    let d = readLine()!.split(separator: " ").map { Int(String($0))! }
    jams.append((d[0], d[1]))
}
for _ in 0..<nk[1] {
    backs.append(Int(readLine()!)!)
}

jams.sort(by: { $0.m < $1.m })
backs.sort(by: <)
var heap = Heap<(Int, Int)>([], compare: { $0.1 > $1.1 })
var getValue = 0

var jamIdx = 0
for back in backs {
    while jamIdx < jams.count, jams[jamIdx].m <= back {
        heap.push(jams[jamIdx])
        jamIdx += 1
    }
    
    let jam = heap.pop()
    getValue += jam?.1 ?? 0
}

print(getValue)


public struct Heap<Element> {
    
    private var elements: [Element]
    
    public var count: Int { return elements.count }
    public var isEmpty: Bool { return elements.isEmpty }
    public func top() -> Element? { return elements.first }
    
    public let compare: (Element, Element) -> Bool
    
    init(_ elements: [Element] = [], compare: @escaping (Element, Element) -> Bool) {
        self.elements = elements
        self.compare = compare
        buildHeep()
    }
    
    public mutating func push(_ value: Element) {
        elements.append(value)
        siftUp(elements.count-1)
    }
    
    public mutating func pop() -> Element? {
        if elements.count == 0 { return nil }
        let result = elements.first
        elements.swapAt(0, elements.count-1)
        let _ = elements.popLast()
        siftDown(0)
        return result
    }
    
    private mutating func buildHeep() {
        for i in (0 ..< elements.count/2).reversed() {
            siftDown(i)
        }
    }

    private mutating func siftDown(_ index: Int) {
        var index = index
        while true {
            let child: Int
            if index * 2 + 1 >= elements.count {
                return
            } else if index * 2 + 2 == elements.count {
                child = index * 2 + 1
            } else {
                child = compare(elements[index*2+1], elements[index*2+2]) ? index * 2 + 1 : index * 2 + 2
            }
            if compare(elements[index], elements[child]) { return }
            elements.swapAt(index, child)
            index = child
        }
    }
    
    private mutating func siftUp(_ index: Int) {
        var index = index
        while true {
            let parent = (index-1)/2
            if index == 0 || compare(elements[parent], elements[index]) { return }
            elements.swapAt(parent, index)
            index = parent
        }
    }
    
}
