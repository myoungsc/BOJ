//
//  main.swift
//  2338
//
//  Created by 명수창 on 2021/11/09.
//  Copyright © 2021 myoung. All rights reserved.
//

import Foundation

var n = readLine()!
var sub = readLine()!

print(sum(n, sub))
print(subtraction(n, sub))
print(multiplication(n, sub))

func sum(_ n: String, _ sub: String) -> String {
    var res = ""
    if n.hasPrefix("-") || sub.hasPrefix("-") {
        var temp = sub
        if temp.hasPrefix("-") {
            temp.removeFirst()
        } else {
            temp = "-" + temp
        }
        res = subtraction(n, temp)
    } else {
        let tempA = n.count > sub.count ? n.reversed().map{ String($0) } : sub.reversed().map{ String($0) }
        let tempB = n.count > sub.count ? sub.reversed().map{ String($0) } : n.reversed().map{ String($0) }
                
        var resStrs: [String] = []
        var uper: Int = 0
        for i in 0 ..< tempA.count {
            var a = 0, b = 0
            if let temp = Int(tempA[i]) { a = temp }
            if i < tempB.count {
                if let temp = Int(tempB[i]) {
                    b = temp
                }
            }
            let tempSum = a+b+uper
            uper = tempSum / 10
            resStrs.append("\(tempSum%10)")
        }
        if uper == 1 { resStrs.append("1")}
        res = resStrs.reversed().joined()
    }
    return res
}

func subtraction(_ n: String, _ sub: String) -> String {
    var tempN = n, tempSub = sub
    if !tempN.hasPrefix("-") && tempSub.hasPrefix("-") {
        tempSub.removeFirst()
        let res = sum(tempN, tempSub)
        if res == "0" { return res }
        return res
    } else if tempN.hasPrefix("-") && !tempSub.hasPrefix("-") {
        tempN.removeFirst()
        let res = sum(tempN, tempSub)
        if res == "0" { return res }
        return "-" + res
    } else {
        if tempN.hasPrefix("-") {
            tempN.removeFirst()
        }
        
        if tempSub.hasPrefix("-") {
            tempSub.removeFirst()
        }
        
        var minus = ""
        
        var maxValue = "", minValue = ""
        if tempN.count == tempSub.count {
            let arrTempN = tempN.map{ String($0) }
            let arrTempSub = tempSub.map{ String($0) }
            for i in 0 ..< arrTempN.count {
                if arrTempN[i] == arrTempSub[i] { continue }
                maxValue = Int(arrTempN[i]) ?? 0 > Int(arrTempSub[i]) ?? 0 ? tempN : tempSub
                minValue = Int(arrTempN[i]) ?? 0 > Int(arrTempSub[i]) ?? 0 ? tempSub : tempN
                break
            }
        } else {
            maxValue = tempN.count > tempSub.count ? tempN : tempSub
            minValue = tempN.count > tempSub.count ? tempSub : tempN
        }
        if maxValue == minValue { return "0" }
        
        if n.hasPrefix("-") && sub.hasPrefix("-") {
            if maxValue == tempN { minus = "-" }
            if maxValue == tempSub { minus = "" }
        } else {
            if maxValue == tempSub { minus = "-" }
        }
        
        var arrStr: [String] = Array(repeating: "0", count: maxValue.count)
        let maxArr = maxValue.reversed().map{ String($0) }
        let minArr = minValue.reversed().map() { String($0) }
                
        var getUp = false
        for i in 0 ..< arrStr.count {
            var a = 0, b = 0
            if i < maxArr.count {
                a = Int(maxArr[i]) ?? 0
            }
            if i < minArr.count {
                b = Int(minArr[i]) ?? 0
            }
            
            if getUp { a -= 1 }
            var temp = 0
            if a >= b {
                temp = a-b
                getUp = false
            } else {
                temp = (a+10)-b
                getUp = true
            }
            arrStr[i] = "\(temp)"
        }
        arrStr = arrStr.reversed()
    
        for i in 0 ..< arrStr.count {
            if arrStr[i] == "0" {
                arrStr[i] = ""
            } else {
                break
            }
        }
        let res = arrStr.joined()
        if res == "0" { return res }
        return minus + res
    }
}

func multiplication(_ n: String, _ sub: String) -> String {
    var res = "0"
    var tempN = n
    var tempSub = sub
    
    var sign = true
    
    if tempN.hasPrefix("-") {
        tempN.removeFirst()
        sign = !sign
    }
    
    if tempSub.hasPrefix("-") {
        tempSub.removeFirst()
        sign = !sign
    }
    
    let arrN = tempN.reversed().map{ String($0) }
    let arrSub = tempSub.reversed().map{ String($0) }
        
    for i in 0 ..< arrSub.count {
        
        var upValue = 0
        var sumValue = ""
        
        let mutipleValue = Int(arrSub[i])!
        if mutipleValue == 0 { continue }
        
        for j in 0 ..< arrN.count {
            let sum = Int(arrN[j])!
            let tempValue = sum * mutipleValue + upValue
            upValue = tempValue / 10
            let value = tempValue % 10
            sumValue = "\(value)" + sumValue
        }
        
        let sendUpValue = upValue == 0 ? "" : "\(upValue)"
        
        res = sum(res, "\(sendUpValue)"+sumValue+String(repeating: "0", count: i))
    }
    return sign ? res : "-"+res
}

