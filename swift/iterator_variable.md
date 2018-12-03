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
