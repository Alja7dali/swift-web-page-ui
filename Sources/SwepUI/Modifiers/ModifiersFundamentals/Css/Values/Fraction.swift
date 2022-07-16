public protocol HasValueOfFraction: CSSValue {}

extension CssPropOpacity: HasValueOfFloatLiteral {}

// extension Value where Kind: HasValueOfFraction {
//   public init(_ value: Double) {
//     rawValue = fraction(abs(value)).description
//   }
// }
