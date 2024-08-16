import Foundation

public enum TokenType {
    case TOKEN_ID
    case TOKEN_EQUALS
    case TOKEN_STRING
    case TOKEN_SEMI
    case TOKEN_LPAREN
    case TOKEN_RPAREN
}

public struct TOKEN {
    var type: TokenType
    var value: String
}


public func init_token(type: TokenType, value: String) -> TOKEN {
    let token: TOKEN = TOKEN(type: type, value: value)
    return token
}