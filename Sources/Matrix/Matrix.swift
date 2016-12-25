//
//  Matrix.swift
//  LearnDeepLearningWithSwift
//
//  Created by tajika on 2016/12/25.
//
//

import Foundation

public enum MatrixError: Error {
    case invalidRows
}

public struct Matrix: MatrixProtocol {
    public var rows: Int { return vectors.count }
    public var columns: Int { return vectors.first?.count ?? 0 }
    public var count: Int { return rows * columns }
    public var shape: (Int, Int) { return (rows, columns) }
    public var vectors: [Vector]
    
    public var description: String {
        let vectorString = vectors.map { (vector) -> String in
            return vector.description
        }
        return "[" + vectorString.joined(separator: "\n") + "]"
    }
    
    public init(vectors: [Vector]) throws {
        self.vectors = vectors
        try vectors.forEach { (vector) in
            if vector.count != self.columns {
                throw MatrixError.invalidRows
            }
        }
    }
    
    public subscript(row: Int) -> Vector {
        get {
            return vectors[row]
        }
        set {
            vectors[row] = newValue
        }
    }
    
    public func column(i: Int) -> Vector {
        var array: [Double] = []
        for row in 0..<rows {
            array.append(vectors[row].array[i])
        }
        return Vector(array)
    }
    
    public static func *(lhs: Matrix, rhs: Matrix) -> Matrix {
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
    
    public static func +(lhs: Matrix, rhs: Matrix) -> Matrix {
        var vectors: [Vector] = []
        for i in 0..<lhs.rows {
            vectors.append(lhs.vectors[i] + rhs.vectors[i])
        }
        return try! Matrix(vectors: vectors)
    }
    
    public static func -(lhs: Matrix, rhs: Matrix) -> Matrix {
        var vectors: [Vector] = []
        for i in 0..<lhs.rows {
            vectors.append(lhs.vectors[i] - rhs.vectors[i])
        }
        return try! Matrix(vectors: vectors)
    }
    
}

