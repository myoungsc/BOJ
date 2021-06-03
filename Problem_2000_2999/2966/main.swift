//
//  main.swift
//  2966
//
//  Created by 명수창 on 2021/06/03.
//  Copyright © 2021 myoung. All rights reserved.
//

import Foundation

if let _ = readLine(),
   let input = readLine() {
    let anwser = Array(input)
    
    let name = ["Adrian", "Bruno", "Goran"]
    let adrian = ["A", "B", "C"]
    let bruno = ["B", "A", "B", "C"]
    let goran = ["C", "C", "A", "A", "B", "B"]
    
    var anwsers = [0, 0 ,0]
    for (i, element) in anwser.enumerated() {
        anwsers[0] += compareAnwser(adrian, String(element), i)
        anwsers[1] += compareAnwser(bruno, String(element), i)
        anwsers[2] += compareAnwser(goran, String(element), i)
    }
    if let maxValue = anwsers.max() {
        print(maxValue)
        for i in 0 ..< anwsers.count {
            if anwsers[i] == maxValue {
                print(name[i])
            }
        }
    }
}

func compareAnwser(_ arr: [String], _ element: String, _ i: Int) -> Int {
    let index = i % arr.count
    if element == arr[index] {
        return 1
    }
    return 0
}
