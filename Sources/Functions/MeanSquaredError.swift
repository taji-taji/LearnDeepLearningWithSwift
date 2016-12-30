//
//  MeanSquaredError.swift
//  LearnDeepLearningWithSwift
//
//  Created by tajika on 2016/12/30.
//
//

import Foundation

/// 2乗和誤差
public func meanSquaredError(output: [Double], teacher: [Double]) -> Double? {
    guard output.count == teacher.count else {
        return nil
    }
    let squaredDiffs = output.enumerated().map { (index, value) -> Double in
        return pow((value - teacher[index]), 2)
    }
    return 0.5 * squaredDiffs.sum
}
