//
//  CrossEntropyError.swift
//  LearnDeepLearningWithSwift
//
//  Created by tajika on 2016/12/30.
//
//

import Foundation

public func crossEntropyError(output: [Double], teacher: [Double]) -> Double? {
    guard output.count == teacher.count else {
        return nil
    }
    let delta = 1e-7
    let array = output.enumerated().map { (index, value) -> Double in
        return teacher[index] * log(value + delta)
    }
    return -array.sum
}
