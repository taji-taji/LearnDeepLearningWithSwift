//
//  Matrix.swift
//  LearnDeepLearningWithSwift
//
//  Created by tajika on 2016/12/25.
//
//

import Foundation

enum MatrixError: Error {
    case invalidRows
}

protocol MatrixProtocol: CustomStringConvertible {
    var rows: Int { get }
    var columns: Int { get }
    var count: Int { get }
    var shape: (Int, Int) { get }
}

struct Vector: MatrixProtocol {
    var rows: Int { return 0 }
    var columns: Int { return array.count }
    var count: Int { return columns }
    var shape: (Int, Int) { return (1, 0) }
    var array: [Double]
    
    var description: String {
        let arrayString = array.map({ (Double) -> String in
            return "\(Double)"
        })
        return "[" + arrayString.joined(separator: ",") + "]"
    }
    
    init(_ array: [Double]) {
        self.array = array
    }
    
    subscript(i: Int) -> Double {
        get {
            return array[i]
        }
        set {
            array[i] = newValue
        }
    }
    
    static func *(lhs: Vector, rhs: Vector) -> Double {
        let count = lhs.count
        var result: Double = 0
        for i in 0..<count {
            result += lhs.array[i] * rhs.array[i]
        }
        return result
    }
}

struct Matrix: MatrixProtocol {
    var rows: Int { return vectors.count }
    var columns: Int { return vectors.first?.count ?? 0 }
    var count: Int { return rows * columns }
    var shape: (Int, Int) { return (rows, columns) }
    var vectors: [Vector]
    
    var description: String {
        let vectorString = vectors.map { (vector) -> String in
            return vector.description
        }
        return "[" + vectorString.joined(separator: "\n") + "]"
    }
    
    init(vectors: [Vector]) throws {
        self.vectors = vectors
        try vectors.forEach { (vector) in
            if vector.count != self.columns {
                throw MatrixError.invalidRows
            }
        }
    }
    
    subscript(row: Int) -> Vector {
        get {
            return vectors[row]
        }
        set {
            vectors[row] = newValue
        }
    }
    
    func column(i: Int) -> Vector {
        var array: [Double] = []
        for row in 0..<rows {
            array.append(vectors[row].array[i])
        }
        return Vector(array)
    }
    
    static func *(lhs: Matrix, rhs: Matrix) -> Matrix {
        var vectors: [Vector] = []
        for rowIndex in 0..<lhs.rows {
            let row = lhs.vectors[rowIndex]
            let columns = rhs.columns
            var array: [Double] = []
            for columnIndex in 0..<columns {
                let column = rhs.column(i: columnIndex)
                array.append(row * column)
            }
            vectors.append(Vector(array))
        }
        return try! Matrix(vectors: vectors)
    }
    
}

