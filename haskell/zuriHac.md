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

- 배열의 첫번째 원소 꺼내는 함수 만들기(Maybe타입)
```haskell
Prelude> Nothing
Nothing
Prelude> Just 5
Just 5
Prelude> :t Nothing
Nothing :: Maybe a
Prelude> :{
Prelude| let zuriHead :: ZuriList a -> Maybe a
Prelude|     zuriHead Empty = Nothing
Prelude|     zuriHead (Cell x xs) = Just x
Prelude| :}

Prelude> let l = Empty
Prelude> zuriHead l
Nothing
Prelude> let l = (Cell 5 Empty)
Prelude> zuriHead l
Just 5
```

- 배열의 첫번째 원소를 뺀 모든 원소 꺼내는 함수 만들기
```haskell
Prelude> :{
Prelude| let zuriTail :: ZuriList a -> Maybe (ZuriList a)
Prelude|     zuriTail Empty = Nothing
Prelude|     zuriTail (Cell _ xs) = Just xs
Prelude| :}

Prelude> let l = Cell 6 (Cell 5 (Cell 4 Empty)))
Prelude> zuriTail l
Just Cell 5 Cell 4 Empty
```

- 배열 끝에서 두번째 원소를 꺼내는 함수 만들기
```haskell
Prelude> :{
Prelude| let zuriNextToLast :: ZuriList a -> Maybe a
Prelude|     zuriNextToLast Empty = Nothing
Prelude|     zuriNextToLast (Cell x (Cell _ Empty)) = Just x
Prelude|     zuriNextToLast (Cell _ xs) = zuriNextToLast xs
Prelude| :}
Prelude> zuriNextToLast l
Just 5
```

- 배열의 길이를 구하는 함수 만들기
```haskell
Prelude> :{
Prelude| let zuriLength :: ZuriList a -> Int
Prelude|     zuriLength Empty = 0
Prelude|     zuriLength (Cell x xs) = 1 + (zuriLength xs)
Prelude| :}
Prelude> zuriLength l
3
-- if the list is very very long, this code is caused a stack overflow.
```
