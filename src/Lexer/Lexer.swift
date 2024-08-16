import Foundation



public struct LEXER {
    let c: Character
    let i: Int
    let contents: String
}

public func init_lexer(content: String) -> LEXER {
    return LEXER(c: content[content.startIndex], i: 0, contents: content)
}

public func lexer_advance(lexer: LEXER) -> Void {

}

public func lexer_skip_whitespace(lexer: LEXER) -> Void {
}

public func lexer_get_next_token(lexer: LEXER) -> TOKEN {
    return TOKEN(type: TokenType.TOKEN_ID, value: "")
}