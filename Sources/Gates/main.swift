import Functions

// AND Gate
print("-----AND-----")
print("(0, 0)")
print(Gate.and.output(withInputsX1: .zero, x2: .zero))
print("(1, 0)")
print(Gate.and.output(withInputsX1: .one, x2: .zero))
print("(0, 1)")
print(Gate.and.output(withInputsX1: .zero, x2: .one))
print("(1, 1)")
print(Gate.and.output(withInputsX1: .one, x2: .one))

// NAND Gate
print("-----NAND-----")
print("(0, 0)")
print(Gate.nand.output(withInputsX1: .zero, x2: .zero))
print("(1, 0)")
print(Gate.nand.output(withInputsX1: .one, x2: .zero))
print("(0, 1)")
print(Gate.nand.output(withInputsX1: .zero, x2: .one))
print("(1, 1)")
print(Gate.nand.output(withInputsX1: .one, x2: .one))

// OR Gate
print("-----OR-----")
print("(0, 0)")
print(Gate.or.output(withInputsX1: .zero, x2: .zero))
print("(1, 0)")
print(Gate.or.output(withInputsX1: .one, x2: .zero))
print("(0, 1)")
print(Gate.or.output(withInputsX1: .zero, x2: .one))
print("(1, 1)")
print(Gate.or.output(withInputsX1: .one, x2: .one))

// XOR Gate
print("-----XOR-----")
print("(0, 0)")
print(Gate.xor.output(withInputsX1: .zero, x2: .zero))
print("(1, 0)")
print(Gate.xor.output(withInputsX1: .one, x2: .zero))
print("(0, 1)")
print(Gate.xor.output(withInputsX1: .zero, x2: .one))
print("(1, 1)")
print(Gate.xor.output(withInputsX1: .one, x2: .one))
