module Lexer where 

import Data.Char 

data Ty = TBool
        | TNum
        | TFun Ty Ty 
        deriving (Show, Eq)

data Expr = BTrue
          | BFalse
          | Num Int 
          | Add Expr Expr 
          | And Expr Expr 
          | Or Expr Expr 
          | Neg Expr  
          | If Expr Expr Expr 
          | Var String
          | Lam String Ty Expr 
          | App Expr Expr 
          | Paren Expr
          | Eq Expr Expr
          | Mul Expr Expr
          | Sub Expr Expr
          | Gt Expr Expr
          | Lt Expr Expr
          deriving (Show, Eq)

instance Ord Expr where
    compare (Num x) (Num y) = compare x y
    compare (BTrue) (BTrue) = EQ
    compare (BFalse) (BFalse) = EQ
    compare _ _ = error "cannot compare expressions other than numbers and booleans"
    
data Token = TokenTrue 
           | TokenFalse 
           | TokenNum Int 
           | TokenAdd 
           | TokenAnd
           | TokenOr
           | TokenNeg
           | TokenIf 
           | TokenThen
           | TokenElse 
           | TokenVar String 
           | TokenLam
           | TokenColon
           | TokenArrow 
           | TokenLParen
           | TokenRParen
           | TokenBoolean
           | TokenNumber
           | TokenEq
           | TokenMul
           | TokenSub
           | TokenGt
           | TokenLt
           deriving Show 

isToken :: Char -> Bool
isToken c = elem c "->&|="

lexer :: String -> [Token]
lexer [] = [] 
lexer ('+':cs) = TokenAdd : lexer cs 
lexer ('*':cs) = TokenMul : lexer cs 
lexer ('!':cs) = TokenNeg : lexer cs 
lexer ('\\':cs) = TokenLam : lexer cs
lexer (':':cs) = TokenColon : lexer cs
lexer ('(':cs) = TokenLParen : lexer cs
lexer (')':cs) = TokenRParen : lexer cs
lexer ('>':cs) = TokenGt : lexer cs
lexer ('<':cs) = TokenLt : lexer cs
lexer (c:cs) | isSpace c = lexer cs 
             | isDigit c = lexNum (c:cs)
             | isAlpha c = lexKW (c:cs)
             | isToken c = lexSymbol (c:cs)
lexer _ = error "Lexical error: caracter inválido!"

lexNum :: String -> [Token]
lexNum cs = case span isDigit cs of 
              (num, rest) -> TokenNum (read num) : lexer rest 

lexKW :: String -> [Token]
lexKW cs = case span isAlpha cs of 
             ("true", rest)  -> TokenTrue : lexer rest 
             ("false", rest) -> TokenFalse : lexer rest 
             ("if", rest)    -> TokenIf : lexer rest 
             ("then", rest)  -> TokenThen : lexer rest 
             ("else", rest)  -> TokenElse : lexer rest 
             ("Bool", rest)  -> TokenBoolean : lexer rest 
             ("Number", rest)  -> TokenNumber : lexer rest 
             (var, rest)     -> TokenVar var : lexer rest 

lexSymbol :: String -> [Token]
lexSymbol cs = case span isToken cs of
                   ("->", rest) -> TokenArrow  : lexer rest
                   ("&&", rest) -> TokenAnd    : lexer rest
                   ("||", rest) -> TokenOr    : lexer rest
                   ("==", rest) -> TokenEq     : lexer rest
                   ("-", rest) -> TokenSub     : lexer rest
                   _ -> error "Lexical error: símbolo inválido!"