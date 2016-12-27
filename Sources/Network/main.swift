//
//  main.swift
//  LearnDeepLearningWithSwift
//
//  Created by tajika on 2016/12/25.
//
//

import Utility
import Matrix

// Step Function
print("-----Step Function-----")
print("[-1.0, 1.0, 2.0]")
print(stepFunction(array: [-1.0, 1.0, 2.0]))

// Sigmoid Function
print("-----Sigmoid Function-----")
print("[-1.0, 1.0, 2.0]")
print(sigmoidFunction(vector: Vector([-1.0, 1.0, 2.0])))

func initNetwork() -> [String : Matrix] {
    let network: [String : Matrix] = [
        "W1": try! Matrix(vectors: [Vector([0.1, 0.3, 0.5]), Vector([0.2, 0.4, 0.6])]),
        "b1": try! Matrix(vectors: [Vector([0.1, 0.2, 0.3])]),
        "W2": try! Matrix(vectors: [Vector([0.1, 0.4]), Vector([0.2, 0.5]), Vector([0.3, 0.6])]),
        "b2": try! Matrix(vectors: [Vector([0.1, 0.2])]),
        "W3": try! Matrix(vectors: [Vector([0.1, 0.3]), Vector([0.2, 0.4])]),
        "b3": try! Matrix(vectors: [Vector([0.1, 0.2])])
    ]
    return network
}

func forward(network: [String : Matrix], x: Matrix) -> Matrix {
    let W1 = network["W1"]!
    let W2 = network["W2"]!
    let W3 = network["W3"]!
    let b1 = network["b1"]!
    let b2 = network["b2"]!
    let b3 = network["b3"]!
    
    let a1 = try! (x * W1) + b1
    let z1 = sigmoidFunction(vector: a1.vectors.first!)
    let a2 = try! (z1 * W2) + b2
    let z2 = sigmoidFunction(vector: a2.vectors.first!)
    let a3 = try! (z2 * W3) + b3
    let y = a3
    return y
}

// Newral Network
print("-----Newral Network-----")
let x = try! Matrix(vectors: [Vector([1.0, 0.5])])
print(forward(network: initNetwork(), x: x))
