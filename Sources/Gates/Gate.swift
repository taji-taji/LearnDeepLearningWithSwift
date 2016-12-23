import Utility

enum GateInput: CustomStringConvertible {
    case zero
    case one
    
    var description: String {
        switch self {
        case .zero:
            return "0"
        case .one:
            return "1"
        }
    }
}

enum Gate {
    case and
    case nand
    case or
    case xor
    
    func output(withInputsX1 x1: GateInput, x2: GateInput) -> GateInput {
        switch self {
        case .and:
            let x: [Int] = [x1.hashValue, x2.hashValue]
            let w: [Double] = [0.5, 0.5]
            let b: Double = -0.7
            let tmp = x.enumerated().map({ Double($0.1) * w[$0.0] }).sum + b
            if tmp <= 0 {
                return .zero
            } else {
                return .one
            }
        case .nand:
            let x: [Int] = [x1.hashValue, x2.hashValue]
            let w: [Double] = [-0.5, -0.5]
            let b: Double = 0.7
            let tmp = x.enumerated().map({ Double($0.1) * w[$0.0] }).sum + b
            if tmp <= 0 {
                return .zero
            } else {
                return .one
            }
        case .or:
            let x: [Int] = [x1.hashValue, x2.hashValue]
            let w: [Double] = [0.5, 0.5]
            let b: Double = -0.2
            let tmp = x.enumerated().map({ Double($0.1) * w[$0.0] }).sum + b
            if tmp <= 0 {
                return .zero
            } else {
                return .one
            }
        case .xor:
            let s1 = Gate.nand.output(withInputsX1: x1, x2: x2)
            let s2 = Gate.or.output(withInputsX1: x1, x2: x2)
            return Gate.and.output(withInputsX1: s1, x2: s2)
        }
    }
}
