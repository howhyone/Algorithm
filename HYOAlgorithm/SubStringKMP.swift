//
//  SubStringKMP.swift
//  HYOAlgorithm
//
//  Created by hyo on 2022/12/17.
//

import Foundation

// aabcaabaaca
//     aabaa
// 01012
func searchSubString(originStr: String, handlerStr: String) -> Int{
    let nexts = getNexts(handler: handlerStr)
    let origins = Array(originStr)
    let handlers = Array(handlerStr)
    var i = 0
    var j = 0
    while i < originStr.count {
        if origins[i] == handlers[j] {
            j += 1
            i += 1
        } else if j > 0{
            j = nexts[j - 1]
        } else {
            i += 1
        }
        if j == handlerStr.count {
            return i - j
        }
    }
    return -1;
}

// aabaac
// 01012
func getNexts(handler: String) -> [Int] {
    let handlers = Array.init(handler)
    var nexts = Array<Int>()
    let size = handler.count
    var i = 1
    var preLength = 0 //目前共同前后缀长度
    nexts.append(0)
    while i < size {
        if handlers[preLength] == handlers[i] {
            preLength += 1
            nexts.append(preLength)
            i += 1
        } else {
            if preLength == 0 {
                i += 1;
                nexts.append(0)
            } else {
                preLength = nexts[preLength - 1]
            }
        }
    }
        
    return nexts
}

