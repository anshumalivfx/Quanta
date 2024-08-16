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
    if (lexer.c != "\0" && lexer.i < lexer.contents.count) {
        lexer.i += 1
        lexer.c = lexer.contents[lexer.contents.index(lexer.contents.startIndex, offsetBy: lexer.i)]
    }

}

public func lexer_skip_whitespace(lexer: inout LEXER) -> Void {
    while (lexer.c == " " || lexer.c == "\n" || lexer.c == "\t" || lexer.c == "\r") {
        lexer_advance(lexer: &lexer)
    }
}

public func lexer_advanced_with_token(lexer: inout LEXER, token: inout TOKEN) -> TOKEN {
    lexer_advance(lexer: &lexer)
    return token
}

public func lexer_get_next_token(lexer: inout LEXER) -> TOKEN {

    while (lexer.c != "\0" && lexer.i < lexer.contents.count ) {
        if (lexer.c == " " || lexer.c == "\n" || lexer.c == "\t" || lexer.c == "\r") {
            lexer_skip_whitespace(lexer: &lexer)

            switch lexer.c {
            case "=": 
            var token = init_token(type: TokenType.TOKEN_EQUALS, value: lexer_get_current_char_as_string(lexer: &lexer))
            return lexer_advanced_with_token(lexer: &lexer, token: &token)

            case ";":
            var token = init_token(type: TokenType.TOKEN_SEMI, value: lexer_get_current_char_as_string(lexer: &lexer))
            return lexer_advanced_with_token(lexer: &lexer, token: &token)

            case "{":
            var token = init_token(type: TokenType.TOKEN_LPAREN, value: lexer_get_current_char_as_string(lexer: &lexer))
            return lexer_advanced_with_token(lexer: &lexer, token: &token)

            case "}":
            var token = init_token(type: TokenType.TOKEN_RPAREN, value: lexer_get_current_char_as_string(lexer: &lexer))
            return lexer_advanced_with_token(lexer: &lexer, token: &token)

            
            default:
                break
            }
        }
    }

    return TOKEN(type: TokenType.TOKEN_ID, value: "")
}

public func lexer_collect_string(lexer: inout LEXER) -> TOKEN {
    return TOKEN(type: TokenType.TOKEN_ID, value: "")
}

public func lexer_get_current_char_as_string(lexer: inout  LEXER) -> String {
    return ""
}