# Beginner class

- 기본 연산
```haskell
Prelude> 'a'
'a'
Prelude> 'b'
'b'
Prelude> 'c'
'c'
Prelude> ['a', 'a', 'a']
"aaa"
Prelude> [5, 5, 5]
[5,5,5]
Prelude> 5
5
Prelude> 8
8
Prelude> 8.7
8.7
Prelude> 5 + 5
10
Prelude> "hello" ++ "world"
"helloworld"

Prelude> :{
Prelude| let f x =
Prelude|      let
Prelude|       y = 5
Prelude|      in
Prelude|       x + y
Prelude| :}
Prelude> f 5
10

```

- 타입 생성
```haskell
Prelude> :{
Prelude| data ZuriSum =
Prelude|       ZuriOne | ZuriTwo deriving Show
Prelude| :}
Prelude> :{
Prelude| :}
Prelude> ZuriOne
ZuriOne
Prelude> ZuriTwo
ZuriTwo

Prelude> :{
Prelude| data ZuriList a =
Prelude|       Empty | Cell a (ZuriList a) deriving Show
Prelude| :}
Prelude> :t Empty
Empty :: ZuriList a
Prelude> :t Cell 5 Empty
Cell 5 Empty :: Num a => ZuriList a
Prelude> let z1 = Empty
Prelude> let z2 = Cell 1 Empty
Prelude> let z3 = Cell 2 z2
Prelude> z1
Empty
Prelude> z2
Cell 1 Empty
Prelude> z3
Cell 2 (Cell 1 Empty)
Prelude> :{
Prelude| :}
Prelude> Cell 1 Empty
Cell 1 Empty
Prelude> Cell 1 (Cell 2 Empty)
Cell 1 (Cell 2 Empty)
Prelude> Cell 1 (Cell 2 (Cell 3 Empty))
Cell 1 (Cell 2 (Cell 3 Empty))
Prelude> Cell 1 (Cell 2 (Cell 3 (Cell 4 Empty)))
Cell 1 (Cell 2 (Cell 3 (Cell 4 Empty)))
Prelude> :t Cell 1 (Cell 2 (Cell 3 (Cell 4 Empty)))
Cell 1 (Cell 2 (Cell 3 (Cell 4 Empty))) :: Num a => ZuriList a


Prelude> :{
Prelude| instance Show ZuriSum where
Prelude|       show ZuriA = "ZuriA"
Prelude|       show ZuriB = "ZuriB"
Prelude| :}
```
