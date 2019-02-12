//
//  main.swift
//  12813
//
//  Created by myoung on 12/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

func calculatorAND(_ value: [String], value2: [String]) -> String {
    var res = ""
    for i in 0 ..< value.count {
        res.append(value[i] == "1" && value2[i] == "1" ? "1" : "0")
    }
    return res
}

func calculatorOR(_ value: [String], value2: [String]) -> String {
    var res = ""
    for i in 0 ..< value.count {
        res.append(value[i] == "1" || value2[i] == "1" ? "1" : "0")
    }
    return res
}

func calculatorXOR(_ value: [String], value2: [String]) -> String {
    var res = ""
    for i in 0 ..< value.count {
        res.append(value[i] == "1" && value2[i] == "1" || value[i] == "0" && value2[i] == "0" ? "0" : "1")
    }
    return res
}

func calculatorNot(_ value: [String]) -> String {
    var res = ""
    for i in 0 ..< value.count {
        res.append(value[i] == "1" ? "0" : "1")
    }
    return res
}

if let input = readLine(), let input2 = readLine() {
    
    let value = input.map{ String($0) }
    let value2 = input2.map{ String($0) }
    
    print(calculatorAND(value, value2: value2))
    print(calculatorOR(value, value2: value2))
    print(calculatorXOR(value, value2: value2))
    print(calculatorNot(value))
    print(calculatorNot(value2))
}
