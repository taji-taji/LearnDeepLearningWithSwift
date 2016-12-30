//
//  StepFunction.swift
//  LearnDeepLearningWithSwift
//
//  Created by tajika on 2016/12/25.
//
//

import Foundation

public func stepFunction(array: [Double]) -> [Double] {
    return array.map { (x: Double) -> Double in x > 0 ? 1 : 0 }
}
