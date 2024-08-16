import Foundation

extension String {
    var isAlphanumeric: Bool {
        return !self.isEmpty && self.rangeOfCharacter(from: CharacterSet.alphanumerics.inverted) == nil
    }
}

extension Character {
    var isAlphanumeric: Bool {
        return String(self).rangeOfCharacter(from: CharacterSet.alphanumerics.inverted) == nil
    }
}