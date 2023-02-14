{
module Parser where 

import Lexer 
}

%name parser 
%tokentype { Token }
%error { parseError }

%token
    num         { TokenNum $$ }
    '+'         { TokenAdd }
    '*'         { TokenMul }
    '-'         { TokenSub }
    "&&"        { TokenAnd }
    "||"        { TokenOr }
    '!'         { TokenNeg }
    "=="        { TokenEq }
    '='         { TokenEqual }
    '>'         { TokenGt }
    '<'         { TokenLt }
    true        { TokenTrue }
    false       { TokenFalse }
    if          { TokenIf }
    then        { TokenThen }
    else        { TokenElse }
    var         { TokenVar $$ }
    '\\'        { TokenLam }
    "let"       { TokenLet }
    "in"       { TokenIn }
    ':'         { TokenColon }
    "->"        { TokenArrow }
    '('         { TokenLParen }
    ')'         { TokenRParen }
    Bool        { TokenBoolean }
    Number      { TokenNumber }

%nonassoc if then else
%left '+' '-'
%left '*'
%left "&&"
%left "=="

%% 

Exp     : num                                   { Num $1 }
        | var                                   { Var $1 }
        | false                                 { BFalse }
        | true                                  { BTrue }
        | Exp '+' Exp                           { Add $1 $3 }
        | Exp '*' Exp                           { Mul $1 $3 }
        | Exp '-' Exp                           { Sub $1 $3 }
        | Exp "&&" Exp                          { And $1 $3 }
        | Exp "||" Exp                          { Or $1 $3 }
        | '!' Exp                               { Neg $2 }
        | if Exp then Exp else Exp              { If $2 $4 $6 }
        | '\\' var ':' Type "->" Exp            { Lam $2 $4 $6 }
        | "let" var '=' Exp "in" Exp            { Let $2 $4 $6 }
        | Exp Exp                               { App $1 $2 }
        | '(' Exp ')'                           { Paren $2 }
        | Exp "==" Exp                          { Eq $1 $3 }
        | Exp '>' Exp                           { Gt $1 $3 }
        | Exp '<' Exp                           { Lt $1 $3 }

Type    : Bool                       { TBool }
        | Number                     { TNum }
        | '(' Type "->" Type ')'     { TFun $2 $4 }


{ 

parseError :: [Token] -> a 
parseError _ = error "Syntax error!"

}
