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
