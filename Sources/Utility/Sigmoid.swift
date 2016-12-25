//
//  Sigmoid.swift
//  LearnDeepLearningWithSwift
//
//  Created by tajika on 2016/12/25.
//
//

import Foundation

public func sigmoidFunction(array: [Double]) -> [Double] {
    return array.map { (x: Double) -> Double in 1 / (1 + exp(-x)) }
}
