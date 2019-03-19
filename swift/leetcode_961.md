# 2n의 크기의 배열에 n개의 유니크한 숫자가 있는데, 그중에 반복되는 숫자 찾아내기


```swift
func findOne(longArr : [Int]) -> Int{
    var n = longArr.count / 2
    var newArr = [Int]()
    var theAnwser = 0
    for i in 0..<n+2{
        newArr.append(longArr[i])
    }
    for i in 0..<newArr.count{
        for j in 1..<newArr.count-1{
            if newArr[i] == newArr[j]{
                theAnwser = newArr[i]
                return theAnwser
            }
        }
    }
    return theAnwser
}
```

문제를 풀기는 풀었는데 대삽질 잔치를 하면서 풀었다는 걸 깨달음
여기서부터 삽질 시나리오(엉엉)
- 단순히 하나씩 값비교 하는 것보다 시간복잡도가 낮은 방법을 찾아보려고 용을씀
- 용쓰다가 배열을 n+2 크기로 쪼개면 무조건 반복되는 값이 생긴다는 걸 찾아내고(유레카!)
- 신이 나서 배열을 쪼개고 쪼갠데서 비교를 돌렸으나, 이렇게 하면 반복문이 두 번 돌아서... 시간 복잡도는 그냥 단순비교하는 거랑 비슷하다는 걸 깨닫...
- 더구나 단순비교도 배열을 반 밖에 안도는 구조라고 한다 (심지어 더 비효율적임)
