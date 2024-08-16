var lexer: LEXER = init_lexer(content: "let x = \"hello\";")


var token: TOKEN
repeat {
    token = lexer_get_next_token(lexer: &lexer)
    print(token)
} while token.type != TokenType.TOKEN_EOF