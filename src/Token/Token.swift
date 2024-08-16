import Foundation

enum TokenType {
    case TOKEN_ID
    case TOKEN_EQUALS
    case TOKEN_STRING
    case TOKEN_SEMI
    case TOKEN_LPAREN
    case TOKEN_RPAREN
}

public struct TOKEN {
    let type: TokenType
    let value: String
}


public func init_token(type: Int, value: String) -> TOKEN {
    return TOKEN(type: TokenType.TOKEN_ID, value: "")
}