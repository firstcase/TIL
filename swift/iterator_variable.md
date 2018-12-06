# For문 & 변수 할당 연습하기


평소 코딩할 때 반복문에서 변수를 잘 활용하지 못해서
오늘은 몇 가지 간단한 문제를 풀면서 연습을 해보았다.


포인트는 for문 밖에 변수를 선언하고 반복문에 활용해보는 것!

```swift
func countOne(_ aArr :[Int]) -> Int {
    var count = 0
    for i in 0..<aArr.count{
        if aArr[i] == 1 {
            count = count + 1
        }
    }
    return count
}

func max(_ aArr : [Int]) {
    var a = 0
    for i in 0..<aArr.count-1{
        if a < aArr[i] {
            a = aArr[i]
        }
    }
    print(a)
}

func countOneTwo(_ aArr :[Int]) -> [Int] {
    var countOne = 0
    var countTwo = 0
    for i in 0..<aArr.count{
        if aArr[i] == 1 {
            countOne = countOne + 1
        }
        if aArr[i] == 2 {
            countTwo = countTwo + 1
        }
    }
    return [countOne, countTwo]
}
```


# 다중 for문

for문 속에 for문을 사용하는 걸 의미한다. 어쩐지 생각만해도 정신이 산란해 지면서 오늘의 공부를 이만 포기하고 싶어지는 느낌이다. 아무래도 반복문은 시간의 흐름에 몸을 맡긴 인간에게는 직관적이지 않은 것 같다. 게다가 반복문 안에 또 반복문이라니.


배열의 숫자만큼 `*`을 출력하는 함수를 짜보았다.

```swift
func printStar(_ starArr : [Int]) {
    for i in 0..<starArr.count{
        var starCount = starArr[i]
        var starCountArr : String = ""
        for _ in 0..<starCount {
            starCountArr = starCountArr + "*"
        }
        print(starCountArr)
    }
}
```

# 다중 for문 복습

오늘은 숫자 배열을 문자열로 바꿔서 출력하는 함수를 짜 보았다.
선생님이 카카오 공채 코딩테스트 문제를 조금 쉽게 만들어서 준 예제다.

```swift
func printMap(_ intArr :[[Int]]) {
    for i in 0..<intArr.count{
        var singleArr = intArr[i]
        var mapArr = ""
        for j in 0..<singleArr.count {
            if singleArr[j] == 1 {
                mapArr = mapArr + "#"
            } else {
                mapArr = mapArr + " "
            }
        }
        print(mapArr)
    }
}
```
잘못된 곳에 mapArr를 초기화 하는 코드를 넣는 바람에
코드를 실행시켰는데 빈칸만 출력된 코미디가 한 번 연출되었다...ㅋ


# 두개의 숫자배열 합치기

두개의 배열을 받아서 하나의 배열로 바꿔주는 함수를 만들어 보았다.

```swift
func merge(_ arr1 : [[Int]], _ arr2 : [[Int]]) -> [[Int]] {
    var finalArr = [[Int]]()
    for i in 0..<arr1.count {
        finalArr.append([])
        var singleArr1 = arr1[i]
        var singleArr2 = arr2[i]
        for j in 0..<arr1[i].count {
            if singleArr1[j] + singleArr2[j] == 0 {
                finalArr[i].append(0)
            } else {
                finalArr[i].append(1)
            }
        }
    }
    return finalArr
```

이렇게 짠 merge 함수와 위에 짠 printMap을 합치면
["라이언의 비밀지도"](http://tech.kakao.com/2017/09/27/kakao-blind-recruitment-round-1/)라는 이름의 카카오 신입공채 코딩문제를 풀 수 있다.
물론 완전히 똑같은 문제는 아니고 약간 다르긴한데, 유사한 방식으로 풀수 있다. 
