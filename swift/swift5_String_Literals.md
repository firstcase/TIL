# Swift 5.0 에 추가된 문자열 리터럴 문법

```swift
let str = "이것은 따옴표(\")다"
```

위의 것을 아래 처럼 쓸 수 있게 되었다.

```swift
let str = #"이것은 따옴표(")다"#
```

만약 안에 코드를 써야 된다면 이렇게 할 수 있다.

```swift
let str = #"다음은 코드다 \#(1 + 1)"#
```

# 최근 추가된 건 아니지만 잘 몰랐던 String 리터럴

1. 여러줄 문자열 리터럴 : 큰 따옴표 3개
- 들여쓰기도 가능하다.
```Swift
let quotation = """
The White Rabbit put on his spectacles.  "Where shall I begin,
please your Majesty?" he asked.

"Begin at the beginning," the King said gravely, "and go on
till you come to the end; then stop."
"""
```

2. 문자열 리터럴의 특수문자
- \0, \, \t, \n, \r, \”, \’
- \u{n}, n은 1-8자리 십진수 형태로 구성된 유니코드
```swift
let wiseWords "\"Imagination is more importan than knowledge"\ - Einstein"
// "Imagination is more important than knowlege" - Einstein
let dollaSign = "\u{24}"            // $, 유니코트 U+0024
let blackHeart = "\u{2665}"         // ♥, 유니코드 U+2665
let sparklingHeart = "\u{1F496}" // 💖,유니코드 U+1F496
```
