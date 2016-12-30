//
//  Sigmoid.swift
//  LearnDeepLearningWithSwift
//
//  Created by tajika on 2016/12/25.
//
//

import Foundation
import Matrix

public func sigmoidFunction(vector: Vector) -> Matrix {
    let array = vector.array.map { (x: Double) -> Double in
        return 1 / (1 + exp(-x))
    }
    let vector = Vector(array)
    return try! Matrix(vectors: [vector])
}
