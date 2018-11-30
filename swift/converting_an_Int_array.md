# 문제풀이를 위한 예습 - 숫자 배열을 문자로 전환하기


일단 숫자 배열을 문자 배열로 바꿔준다.

```swift
var arr: [Int] = [1,2,3,4,5]
var stringArray = arr.map { String($0) }
```

이런식으로 바꿔줄 수 있다고 한다.

진짜 되는지 아직 돌려보지는 못했...지만 문제 풀 때 써봐야지.


그리고 문자 배열을 문자타입으로 출력한다.

```swift
var array = ["1", "2", "3"]

let stringRepresentation = "-".join(array) // "1-2-3"

let stringRepresentation = [1, 2, 3].description // "[1, 2, 3]"
```

이런 절차를 거치면 숫자로 된 배열을 문자로 전환할 수 있다.
이걸 이용해서 내일은 작년 카카오 공채 신입 문제를 풀어보도록 하겠다. (과연)
