# 선택 정렬 (selection sort)


내 컴퓨터에 음악이 많이 저장되어 있다고 가정하자.  
가수 별로 몇 곡이 들어있는지 순서대로 리스트에 기록하는데는 시간이 얼마나 걸릴까?  
O(n^2) 시간이 걸린다.

선택 정렬은 깔끔한 알고리즘이지만 빠르지 않다.

--------------------------------------

배열 받아서 숫자를 작은 것부터 정렬하는 코드를 짜보았다.
알고리즘 책에는 파이썬으로 코드 예시가 나와 있어서
swift로 비슷하게 짜보았다.

```swift
func findSmallest(_ arr : [Int]) -> Int {
    var smallest = arr[0]
    var smallestIndex = 0

    for i in 1..<arr.count{
        if arr[i] < smallest {
            smallest = arr[i]
            smallestIndex = i
        }
    }
    return smallestIndex
}

func selectionSort(_ arr : [Int]) -> [Int]{
    var newArr = [Int]()
    var copiedArr = arr
    for i in 0..<copiedArr.count {
        var smallest = findSmallest(copiedArr)
        newArr.append(copiedArr.remove(at: smallest))
    }
    return newArr
}
```
