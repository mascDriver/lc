{-# OPTIONS_GHC -w #-}
module Parser where 

import Lexer
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.8

data HappyAbsSyn t4 t5
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,206) ([34848,307,4,0,0,61440,39423,33280,4920,0,0,0,0,40001,9,0,0,512,8320,1230,65520,409,0,49156,28671,2,0,0,0,34848,307,28932,32806,52768,4100,39364,33280,4920,4160,615,57864,76,40001,9,0,0,0,0,0,0,0,256,0,37,32768,4,37888,0,34848,307,0,416,0,0,16384,0,53248,0,0,0,0,57343,8201,13192,1,4096,8320,1230,0,0,0,32976,39,0,32768,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","Exp","Type","num","'+'","'*'","'-'","\"&&\"","\"||\"","'!'","\"==\"","'>'","'<'","true","false","if","then","else","var","'\\\\'","':'","\"->\"","'('","')'","Bool","Number","%eof"]
        bit_start = st * 29
        bit_end = (st + 1) * 29
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..28]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (6) = happyShift action_2
action_0 (12) = happyShift action_4
action_0 (16) = happyShift action_5
action_0 (17) = happyShift action_6
action_0 (18) = happyShift action_7
action_0 (21) = happyShift action_8
action_0 (22) = happyShift action_9
action_0 (25) = happyShift action_10
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (6) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 _ = happyReduce_1

action_3 (6) = happyShift action_2
action_3 (7) = happyShift action_16
action_3 (8) = happyShift action_17
action_3 (9) = happyShift action_18
action_3 (10) = happyShift action_19
action_3 (11) = happyShift action_20
action_3 (12) = happyShift action_4
action_3 (13) = happyShift action_21
action_3 (14) = happyShift action_22
action_3 (15) = happyShift action_23
action_3 (16) = happyShift action_5
action_3 (17) = happyShift action_6
action_3 (18) = happyShift action_7
action_3 (21) = happyShift action_8
action_3 (22) = happyShift action_9
action_3 (25) = happyShift action_10
action_3 (29) = happyAccept
action_3 (4) = happyGoto action_15
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (6) = happyShift action_2
action_4 (12) = happyShift action_4
action_4 (16) = happyShift action_5
action_4 (17) = happyShift action_6
action_4 (18) = happyShift action_7
action_4 (21) = happyShift action_8
action_4 (22) = happyShift action_9
action_4 (25) = happyShift action_10
action_4 (4) = happyGoto action_14
action_4 _ = happyFail (happyExpListPerState 4)

action_5 _ = happyReduce_4

action_6 _ = happyReduce_3

action_7 (6) = happyShift action_2
action_7 (12) = happyShift action_4
action_7 (16) = happyShift action_5
action_7 (17) = happyShift action_6
action_7 (18) = happyShift action_7
action_7 (21) = happyShift action_8
action_7 (22) = happyShift action_9
action_7 (25) = happyShift action_10
action_7 (4) = happyGoto action_13
action_7 _ = happyFail (happyExpListPerState 7)

action_8 _ = happyReduce_2

action_9 (21) = happyShift action_12
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (6) = happyShift action_2
action_10 (12) = happyShift action_4
action_10 (16) = happyShift action_5
action_10 (17) = happyShift action_6
action_10 (18) = happyShift action_7
action_10 (21) = happyShift action_8
action_10 (22) = happyShift action_9
action_10 (25) = happyShift action_10
action_10 (4) = happyGoto action_11
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (6) = happyShift action_2
action_11 (7) = happyShift action_16
action_11 (8) = happyShift action_17
action_11 (9) = happyShift action_18
action_11 (10) = happyShift action_19
action_11 (11) = happyShift action_20
action_11 (12) = happyShift action_4
action_11 (13) = happyShift action_21
action_11 (14) = happyShift action_22
action_11 (15) = happyShift action_23
action_11 (16) = happyShift action_5
action_11 (17) = happyShift action_6
action_11 (18) = happyShift action_7
action_11 (21) = happyShift action_8
action_11 (22) = happyShift action_9
action_11 (25) = happyShift action_10
action_11 (26) = happyShift action_34
action_11 (4) = happyGoto action_15
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (23) = happyShift action_33
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (6) = happyShift action_2
action_13 (7) = happyShift action_16
action_13 (8) = happyShift action_17
action_13 (9) = happyShift action_18
action_13 (10) = happyShift action_19
action_13 (11) = happyShift action_20
action_13 (12) = happyShift action_4
action_13 (13) = happyShift action_21
action_13 (14) = happyShift action_22
action_13 (15) = happyShift action_23
action_13 (16) = happyShift action_5
action_13 (17) = happyShift action_6
action_13 (18) = happyShift action_7
action_13 (19) = happyShift action_32
action_13 (21) = happyShift action_8
action_13 (22) = happyShift action_9
action_13 (25) = happyShift action_10
action_13 (4) = happyGoto action_15
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (6) = happyShift action_2
action_14 (7) = happyShift action_16
action_14 (8) = happyShift action_17
action_14 (9) = happyShift action_18
action_14 (10) = happyShift action_19
action_14 (11) = happyShift action_20
action_14 (12) = happyShift action_4
action_14 (13) = happyShift action_21
action_14 (14) = happyShift action_22
action_14 (15) = happyShift action_23
action_14 (16) = happyShift action_5
action_14 (17) = happyShift action_6
action_14 (18) = happyShift action_7
action_14 (21) = happyShift action_8
action_14 (22) = happyShift action_9
action_14 (25) = happyShift action_10
action_14 (4) = happyGoto action_15
action_14 _ = happyReduce_10

action_15 (6) = happyShift action_2
action_15 (7) = happyShift action_16
action_15 (8) = happyShift action_17
action_15 (9) = happyShift action_18
action_15 (10) = happyShift action_19
action_15 (11) = happyShift action_20
action_15 (12) = happyShift action_4
action_15 (13) = happyShift action_21
action_15 (14) = happyShift action_22
action_15 (15) = happyShift action_23
action_15 (16) = happyShift action_5
action_15 (17) = happyShift action_6
action_15 (18) = happyShift action_7
action_15 (21) = happyShift action_8
action_15 (22) = happyShift action_9
action_15 (25) = happyShift action_10
action_15 (4) = happyGoto action_15
action_15 _ = happyReduce_13

action_16 (6) = happyShift action_2
action_16 (12) = happyShift action_4
action_16 (16) = happyShift action_5
action_16 (17) = happyShift action_6
action_16 (18) = happyShift action_7
action_16 (21) = happyShift action_8
action_16 (22) = happyShift action_9
action_16 (25) = happyShift action_10
action_16 (4) = happyGoto action_31
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (6) = happyShift action_2
action_17 (12) = happyShift action_4
action_17 (16) = happyShift action_5
action_17 (17) = happyShift action_6
action_17 (18) = happyShift action_7
action_17 (21) = happyShift action_8
action_17 (22) = happyShift action_9
action_17 (25) = happyShift action_10
action_17 (4) = happyGoto action_30
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (6) = happyShift action_2
action_18 (12) = happyShift action_4
action_18 (16) = happyShift action_5
action_18 (17) = happyShift action_6
action_18 (18) = happyShift action_7
action_18 (21) = happyShift action_8
action_18 (22) = happyShift action_9
action_18 (25) = happyShift action_10
action_18 (4) = happyGoto action_29
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (6) = happyShift action_2
action_19 (12) = happyShift action_4
action_19 (16) = happyShift action_5
action_19 (17) = happyShift action_6
action_19 (18) = happyShift action_7
action_19 (21) = happyShift action_8
action_19 (22) = happyShift action_9
action_19 (25) = happyShift action_10
action_19 (4) = happyGoto action_28
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (6) = happyShift action_2
action_20 (12) = happyShift action_4
action_20 (16) = happyShift action_5
action_20 (17) = happyShift action_6
action_20 (18) = happyShift action_7
action_20 (21) = happyShift action_8
action_20 (22) = happyShift action_9
action_20 (25) = happyShift action_10
action_20 (4) = happyGoto action_27
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (6) = happyShift action_2
action_21 (12) = happyShift action_4
action_21 (16) = happyShift action_5
action_21 (17) = happyShift action_6
action_21 (18) = happyShift action_7
action_21 (21) = happyShift action_8
action_21 (22) = happyShift action_9
action_21 (25) = happyShift action_10
action_21 (4) = happyGoto action_26
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (6) = happyShift action_2
action_22 (12) = happyShift action_4
action_22 (16) = happyShift action_5
action_22 (17) = happyShift action_6
action_22 (18) = happyShift action_7
action_22 (21) = happyShift action_8
action_22 (22) = happyShift action_9
action_22 (25) = happyShift action_10
action_22 (4) = happyGoto action_25
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (6) = happyShift action_2
action_23 (12) = happyShift action_4
action_23 (16) = happyShift action_5
action_23 (17) = happyShift action_6
action_23 (18) = happyShift action_7
action_23 (21) = happyShift action_8
action_23 (22) = happyShift action_9
action_23 (25) = happyShift action_10
action_23 (4) = happyGoto action_24
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (6) = happyShift action_2
action_24 (7) = happyShift action_16
action_24 (8) = happyShift action_17
action_24 (9) = happyShift action_18
action_24 (10) = happyShift action_19
action_24 (11) = happyShift action_20
action_24 (12) = happyShift action_4
action_24 (13) = happyShift action_21
action_24 (14) = happyShift action_22
action_24 (15) = happyShift action_23
action_24 (16) = happyShift action_5
action_24 (17) = happyShift action_6
action_24 (18) = happyShift action_7
action_24 (21) = happyShift action_8
action_24 (22) = happyShift action_9
action_24 (25) = happyShift action_10
action_24 (4) = happyGoto action_15
action_24 _ = happyReduce_17

action_25 (6) = happyShift action_2
action_25 (7) = happyShift action_16
action_25 (8) = happyShift action_17
action_25 (9) = happyShift action_18
action_25 (10) = happyShift action_19
action_25 (11) = happyShift action_20
action_25 (12) = happyShift action_4
action_25 (13) = happyShift action_21
action_25 (14) = happyShift action_22
action_25 (15) = happyShift action_23
action_25 (16) = happyShift action_5
action_25 (17) = happyShift action_6
action_25 (18) = happyShift action_7
action_25 (21) = happyShift action_8
action_25 (22) = happyShift action_9
action_25 (25) = happyShift action_10
action_25 (4) = happyGoto action_15
action_25 _ = happyReduce_16

action_26 (6) = happyShift action_2
action_26 (11) = happyShift action_20
action_26 (12) = happyShift action_4
action_26 (14) = happyShift action_22
action_26 (15) = happyShift action_23
action_26 (16) = happyShift action_5
action_26 (17) = happyShift action_6
action_26 (21) = happyShift action_8
action_26 (22) = happyShift action_9
action_26 (25) = happyShift action_10
action_26 (4) = happyGoto action_15
action_26 _ = happyReduce_15

action_27 (6) = happyShift action_2
action_27 (7) = happyShift action_16
action_27 (8) = happyShift action_17
action_27 (9) = happyShift action_18
action_27 (10) = happyShift action_19
action_27 (11) = happyShift action_20
action_27 (12) = happyShift action_4
action_27 (13) = happyShift action_21
action_27 (14) = happyShift action_22
action_27 (15) = happyShift action_23
action_27 (16) = happyShift action_5
action_27 (17) = happyShift action_6
action_27 (18) = happyShift action_7
action_27 (21) = happyShift action_8
action_27 (22) = happyShift action_9
action_27 (25) = happyShift action_10
action_27 (4) = happyGoto action_15
action_27 _ = happyReduce_9

action_28 (6) = happyShift action_2
action_28 (11) = happyShift action_20
action_28 (12) = happyShift action_4
action_28 (13) = happyShift action_21
action_28 (14) = happyShift action_22
action_28 (15) = happyShift action_23
action_28 (16) = happyShift action_5
action_28 (17) = happyShift action_6
action_28 (21) = happyShift action_8
action_28 (22) = happyShift action_9
action_28 (25) = happyShift action_10
action_28 (4) = happyGoto action_15
action_28 _ = happyReduce_8

action_29 (6) = happyShift action_2
action_29 (8) = happyShift action_17
action_29 (10) = happyShift action_19
action_29 (11) = happyShift action_20
action_29 (12) = happyShift action_4
action_29 (13) = happyShift action_21
action_29 (14) = happyShift action_22
action_29 (15) = happyShift action_23
action_29 (16) = happyShift action_5
action_29 (17) = happyShift action_6
action_29 (21) = happyShift action_8
action_29 (22) = happyShift action_9
action_29 (25) = happyShift action_10
action_29 (4) = happyGoto action_15
action_29 _ = happyReduce_7

action_30 (6) = happyShift action_2
action_30 (10) = happyShift action_19
action_30 (11) = happyShift action_20
action_30 (12) = happyShift action_4
action_30 (13) = happyShift action_21
action_30 (14) = happyShift action_22
action_30 (15) = happyShift action_23
action_30 (16) = happyShift action_5
action_30 (17) = happyShift action_6
action_30 (21) = happyShift action_8
action_30 (22) = happyShift action_9
action_30 (25) = happyShift action_10
action_30 (4) = happyGoto action_15
action_30 _ = happyReduce_6

action_31 (6) = happyShift action_2
action_31 (8) = happyShift action_17
action_31 (10) = happyShift action_19
action_31 (11) = happyShift action_20
action_31 (12) = happyShift action_4
action_31 (13) = happyShift action_21
action_31 (14) = happyShift action_22
action_31 (15) = happyShift action_23
action_31 (16) = happyShift action_5
action_31 (17) = happyShift action_6
action_31 (21) = happyShift action_8
action_31 (22) = happyShift action_9
action_31 (25) = happyShift action_10
action_31 (4) = happyGoto action_15
action_31 _ = happyReduce_5

action_32 (6) = happyShift action_2
action_32 (12) = happyShift action_4
action_32 (16) = happyShift action_5
action_32 (17) = happyShift action_6
action_32 (18) = happyShift action_7
action_32 (21) = happyShift action_8
action_32 (22) = happyShift action_9
action_32 (25) = happyShift action_10
action_32 (4) = happyGoto action_39
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (25) = happyShift action_36
action_33 (27) = happyShift action_37
action_33 (28) = happyShift action_38
action_33 (5) = happyGoto action_35
action_33 _ = happyFail (happyExpListPerState 33)

action_34 _ = happyReduce_14

action_35 (24) = happyShift action_42
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (25) = happyShift action_36
action_36 (27) = happyShift action_37
action_36 (28) = happyShift action_38
action_36 (5) = happyGoto action_41
action_36 _ = happyFail (happyExpListPerState 36)

action_37 _ = happyReduce_18

action_38 _ = happyReduce_19

action_39 (6) = happyShift action_2
action_39 (7) = happyShift action_16
action_39 (8) = happyShift action_17
action_39 (9) = happyShift action_18
action_39 (10) = happyShift action_19
action_39 (11) = happyShift action_20
action_39 (12) = happyShift action_4
action_39 (13) = happyShift action_21
action_39 (14) = happyShift action_22
action_39 (15) = happyShift action_23
action_39 (16) = happyShift action_5
action_39 (17) = happyShift action_6
action_39 (18) = happyShift action_7
action_39 (20) = happyShift action_40
action_39 (21) = happyShift action_8
action_39 (22) = happyShift action_9
action_39 (25) = happyShift action_10
action_39 (4) = happyGoto action_15
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (6) = happyShift action_2
action_40 (12) = happyShift action_4
action_40 (16) = happyShift action_5
action_40 (17) = happyShift action_6
action_40 (18) = happyShift action_7
action_40 (21) = happyShift action_8
action_40 (22) = happyShift action_9
action_40 (25) = happyShift action_10
action_40 (4) = happyGoto action_45
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (24) = happyShift action_44
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (6) = happyShift action_2
action_42 (12) = happyShift action_4
action_42 (16) = happyShift action_5
action_42 (17) = happyShift action_6
action_42 (18) = happyShift action_7
action_42 (21) = happyShift action_8
action_42 (22) = happyShift action_9
action_42 (25) = happyShift action_10
action_42 (4) = happyGoto action_43
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (6) = happyShift action_2
action_43 (7) = happyShift action_16
action_43 (8) = happyShift action_17
action_43 (9) = happyShift action_18
action_43 (10) = happyShift action_19
action_43 (11) = happyShift action_20
action_43 (12) = happyShift action_4
action_43 (13) = happyShift action_21
action_43 (14) = happyShift action_22
action_43 (15) = happyShift action_23
action_43 (16) = happyShift action_5
action_43 (17) = happyShift action_6
action_43 (18) = happyShift action_7
action_43 (21) = happyShift action_8
action_43 (22) = happyShift action_9
action_43 (25) = happyShift action_10
action_43 (4) = happyGoto action_15
action_43 _ = happyReduce_12

action_44 (25) = happyShift action_36
action_44 (27) = happyShift action_37
action_44 (28) = happyShift action_38
action_44 (5) = happyGoto action_46
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (6) = happyShift action_2
action_45 (7) = happyShift action_16
action_45 (8) = happyShift action_17
action_45 (9) = happyShift action_18
action_45 (10) = happyShift action_19
action_45 (11) = happyShift action_20
action_45 (12) = happyShift action_4
action_45 (13) = happyShift action_21
action_45 (14) = happyShift action_22
action_45 (15) = happyShift action_23
action_45 (16) = happyShift action_5
action_45 (17) = happyShift action_6
action_45 (18) = happyFail []
action_45 (21) = happyShift action_8
action_45 (22) = happyShift action_9
action_45 (25) = happyShift action_10
action_45 (4) = happyGoto action_15
action_45 _ = happyReduce_11

action_46 (26) = happyShift action_47
action_46 _ = happyFail (happyExpListPerState 46)

action_47 _ = happyReduce_20

happyReduce_1 = happySpecReduce_1  4 happyReduction_1
happyReduction_1 (HappyTerminal (TokenNum happy_var_1))
	 =  HappyAbsSyn4
		 (Num happy_var_1
	)
happyReduction_1 _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_1  4 happyReduction_2
happyReduction_2 (HappyTerminal (TokenVar happy_var_1))
	 =  HappyAbsSyn4
		 (Var happy_var_1
	)
happyReduction_2 _  = notHappyAtAll 

happyReduce_3 = happySpecReduce_1  4 happyReduction_3
happyReduction_3 _
	 =  HappyAbsSyn4
		 (BFalse
	)

happyReduce_4 = happySpecReduce_1  4 happyReduction_4
happyReduction_4 _
	 =  HappyAbsSyn4
		 (BTrue
	)

happyReduce_5 = happySpecReduce_3  4 happyReduction_5
happyReduction_5 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Add happy_var_1 happy_var_3
	)
happyReduction_5 _ _ _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_3  4 happyReduction_6
happyReduction_6 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Mul happy_var_1 happy_var_3
	)
happyReduction_6 _ _ _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_3  4 happyReduction_7
happyReduction_7 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Sub happy_var_1 happy_var_3
	)
happyReduction_7 _ _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_3  4 happyReduction_8
happyReduction_8 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (And happy_var_1 happy_var_3
	)
happyReduction_8 _ _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_3  4 happyReduction_9
happyReduction_9 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Or happy_var_1 happy_var_3
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_2  4 happyReduction_10
happyReduction_10 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Neg happy_var_2
	)
happyReduction_10 _ _  = notHappyAtAll 

happyReduce_11 = happyReduce 6 4 happyReduction_11
happyReduction_11 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (If happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_12 = happyReduce 6 4 happyReduction_12
happyReduction_12 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Lam happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_13 = happySpecReduce_2  4 happyReduction_13
happyReduction_13 (HappyAbsSyn4  happy_var_2)
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (App happy_var_1 happy_var_2
	)
happyReduction_13 _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  4 happyReduction_14
happyReduction_14 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Paren happy_var_2
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  4 happyReduction_15
happyReduction_15 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Eq happy_var_1 happy_var_3
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_3  4 happyReduction_16
happyReduction_16 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Gt happy_var_1 happy_var_3
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_3  4 happyReduction_17
happyReduction_17 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Lt happy_var_1 happy_var_3
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_1  5 happyReduction_18
happyReduction_18 _
	 =  HappyAbsSyn5
		 (TBool
	)

happyReduce_19 = happySpecReduce_1  5 happyReduction_19
happyReduction_19 _
	 =  HappyAbsSyn5
		 (TNum
	)

happyReduce_20 = happyReduce 5 5 happyReduction_20
happyReduction_20 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (TFun happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyNewToken action sts stk [] =
	action 29 29 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenNum happy_dollar_dollar -> cont 6;
	TokenAdd -> cont 7;
	TokenMul -> cont 8;
	TokenSub -> cont 9;
	TokenAnd -> cont 10;
	TokenOr -> cont 11;
	TokenNeg -> cont 12;
	TokenEq -> cont 13;
	TokenGt -> cont 14;
	TokenLt -> cont 15;
	TokenTrue -> cont 16;
	TokenFalse -> cont 17;
	TokenIf -> cont 18;
	TokenThen -> cont 19;
	TokenElse -> cont 20;
	TokenVar happy_dollar_dollar -> cont 21;
	TokenLam -> cont 22;
	TokenColon -> cont 23;
	TokenArrow -> cont 24;
	TokenLParen -> cont 25;
	TokenRParen -> cont 26;
	TokenBoolean -> cont 27;
	TokenNumber -> cont 28;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 29 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = HappyIdentity
    (<*>) = ap
instance Monad HappyIdentity where
    return = pure
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (return)
happyThen1 m k tks = (>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (return) a
happyError' :: () => ([(Token)], [String]) -> HappyIdentity a
happyError' = HappyIdentity . (\(tokens, _) -> parseError tokens)
parser tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


parseError :: [Token] -> a 
parseError _ = error "Syntax error!"
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "<built-in>" #-}
{-# LINE 1 "<command-line>" #-}
{-# LINE 8 "<command-line>" #-}
# 1 "/usr/include/stdc-predef.h" 1 3 4

# 17 "/usr/include/stdc-predef.h" 3 4














































{-# LINE 8 "<command-line>" #-}
{-# LINE 1 "/usr/lib/ghc/include/ghcversion.h" #-}

















{-# LINE 8 "<command-line>" #-}
{-# LINE 1 "/tmp/ghc8814_0/ghc_2.h" #-}




























































































































































{-# LINE 8 "<command-line>" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp 









{-# LINE 43 "templates/GenericTemplate.hs" #-}

data Happy_IntList = HappyCons Int Happy_IntList







{-# LINE 65 "templates/GenericTemplate.hs" #-}

{-# LINE 75 "templates/GenericTemplate.hs" #-}

{-# LINE 84 "templates/GenericTemplate.hs" #-}

infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is (1), it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action

{-# LINE 137 "templates/GenericTemplate.hs" #-}

{-# LINE 147 "templates/GenericTemplate.hs" #-}
indexShortOffAddr arr off = arr Happy_Data_Array.! off


{-# INLINE happyLt #-}
happyLt x y = (x < y)






readArrayBit arr bit =
    Bits.testBit (indexShortOffAddr arr (bit `div` 16)) (bit `mod` 16)






-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Int ->                    -- token number
         Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k - ((1) :: Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             _ = nt :: Int
             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n - ((1) :: Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n - ((1)::Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction

{-# LINE 267 "templates/GenericTemplate.hs" #-}
happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery ((1) is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  (1) tk old_st (((HappyState (action))):(sts)) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        action (1) (1) tk (HappyState (action)) sts ((saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ( (HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.

{-# LINE 333 "templates/GenericTemplate.hs" #-}
{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
