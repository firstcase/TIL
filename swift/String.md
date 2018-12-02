# 문자열


## 문자열 합치기
문자열을 합치는 다양한 방법이 있다.

```swift
let hello = "안녕"
let world = "세상"
let message = hello + " " + world + "!" // "안녕 세상!"

var s = "안녕"
s = s + " 친구야" // "안녕 친구야"
s += "!!"       // "안녕 친구야!!"
```

+= <- 이런 식으로 쓰는 걸 오늘 처음 알았다.
대체로 모든 개발자들이 익숙하게 쓴다고 한다. 하지만 나에게는 영 어색...

문자열을 붙이는 예제를 만들어서 풀어보았다.
```swift
func printArr(_ longArr : [Int]) {
    var sum = 0

    for i in 0..<longArr.count {
        sum = sum + longArr[i]
    }

    print(sum)
}

func printArr2(_ longArr : [Int]) {
    var line = ""

    for i in 0..<longArr.count {
        line = line + String(longArr[i])
    }

    print(line)
}
```


## 문자열 길이
문자열은 배열처럼 인식하기 때문에 길이도 배열을 확인할 때와 동일하다.

```swift
let s = "문자열 길이"
s.count // 6
```


## 문자열 인덱스
문자열을 배열처럼 인식하기는 하지만, 인덱스를 부를 때는 배열처럼 하면 안됨.

```swift
let i = String.Index(encodedOffset: 0)
```
스프링.인덱스.인코드오프셋 이라는 길다란 말을 앞에 붙여야 한다. 세상 길어짐...


## 문자열 일부 가져오기
그래서 문자열 일부를 가져오는 코드도 쓸데없이 같이 길어진다.

```swift
let s = "스위프트는 참 좋다"
let i = String.Index(encodedOffset: 0)
s[i] // "스" : Character

let from = String.Index(encodedOffset: 0)
let to = String.Index(encodedOffset: 3)
s[from...to] // "스위프트" : [Substring]
```
이렇게 문자열의 일부를 가져오면 그 결과의 타입은 String이 아니고 Substring이 된다.
Substring을 String으로 만들려면 아래와 같이 스트링의 init을 실행하면 된다.
```swift
let s2 : String = String(s[from...to])
```


## 문자열을 배열로 만들기
문자열을 배열로 만드는 법은 매우 간단하다.
배열을 문자열로 다시 되돌리는 법도 역시 간단함!

```swift
let s = "안녕 세상아"
let arr = Array(s) // ["안", "녕", " ", "세", "상", "아"]

// 배열을 다시 문자열로 만들기
let s2 = String(arr)
```


## 문자열 바꾸기
문자열을 바꿀 때는 .replaceSubrange 를 쓴다.

```swift
let s = "안녕 세상아"
let to = String.Index(encodedOffset: 1)
s.replaceSubrange(s.startIndex...to, with: "Hej") // "Hej 세상아"
s // "Hej 세상아"
```
