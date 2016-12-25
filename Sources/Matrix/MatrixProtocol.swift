//
//  MatrixProtocol.swift
//  LearnDeepLearningWithSwift
//
//  Created by tajika on 2016/12/25.
//
//

import Foundation

public protocol MatrixProtocol: CustomStringConvertible {
    var rows: Int { get }
    var columns: Int { get }
    var count: Int { get }
    var shape: (Int, Int) { get }
}
