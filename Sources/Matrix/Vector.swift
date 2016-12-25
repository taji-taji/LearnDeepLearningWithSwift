//
//  Vector.swift
//  LearnDeepLearningWithSwift
//
//  Created by tajika on 2016/12/25.
//
//

import Foundation

public struct Vector: MatrixProtocol {
    public var rows: Int { return 0 }
    public var columns: Int { return array.count }
    public var count: Int { return columns }
    public var shape: (Int, Int) { return (1, 0) }
    public var array: [Double]
    
    public var description: String {
        let arrayString = array.map({ (Double) -> String in
            return "\(Double)"
        })
        return "[" + arrayString.joined(separator: ",") + "]"
    }
    
    public init(_ array: [Double]) {
        self.array = array
    }
    
    public subscript(i: Int) -> Double {
        get {
            return array[i]
        }
        set {
            array[i] = newValue
        }
    }
    
    public static func *(lhs: Vector, rhs: Vector) -> Double {
        let count = lhs.count
        var result: Double = 0
        for i in 0..<count {
            result += lhs.array[i] * rhs.array[i]
        }
        return result
    }
    
    public static func +(lhs: Vector, rhs: Vector) -> Vector {
        var array: [Double] = []
        for i in 0..<lhs.count {
            array.append(lhs[i] + rhs[i])
        }
        return Vector(array)
    }
    
    public static func -(lhs: Vector, rhs: Vector) -> Vector {
        var array: [Double] = []
        for i in 0..<lhs.count {
            array.append(lhs[i] - rhs[i])
        }
        return Vector(array)
    }
    
}
