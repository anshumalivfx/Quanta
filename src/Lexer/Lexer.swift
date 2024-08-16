import Foundation

public struct LEXER {
    var c: Character
    var i: Int
    var contents: String
}

public func init_lexer(content: String) -> LEXER {
    let lexer: LEXER = LEXER(c: content[content.startIndex], i: 0, contents: content)
    return lexer
}

public func lexer_advance(lexer: inout LEXER) -> Void {
    if (lexer.c != nil && lexer.i < lexer.contents.count) {
        lexer.i += 1
        lexer.c = lexer.contents[lexer.contents.index(lexer.contents.startIndex, offsetBy: lexer.i)]
    }

}

public func lexer_skip_whitespace(lexer: LEXER) -> Void {
}

public func lexer_get_next_token(lexer: LEXER) -> TOKEN {
    return TOKEN(type: TokenType.TOKEN_ID, value: "")
}

public func lexer_collect_string(lexer: LEXER) -> TOKEN {
    return TOKEN(type: TokenType.TOKEN_ID, value: "")
}

public func lexer_get_current_char_as_string(lexer: LEXER) -> String {
    return ""
}