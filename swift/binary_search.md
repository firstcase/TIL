# 바이너리 서치와 시간복잡도


## 시간복잡도란?

컴퓨터과학에서 알고리즘의 시간복잡도는 입력을 나타내는 문자열 길이의 함수로서 작동하는 알고리즘을 취해 시간을 정량화하는 것이다. (출처 [위키](https://ko.wikipedia.org/wiki/%EC%8B%9C%EA%B0%84_%EB%B3%B5%EC%9E%A1%EB%8F%84))


오늘은 가장 많이 쓰이는 O(N)과 O(1), O(logN)에 대해서 배워보았다.

```swift
func isExist (_ arr : [Int], _ target : Int) -> Bool {
    for i in 0..<arr.count {
        if target == arr[i] {
            return true
        }
    }
    return false
}
```

위와 같이 배열을 받아서 특정값을 찾아낼 때 for문을 쓰면 시간복잡도는 O(N)이 된다.


## 바이너리 서치

이때 바이너리 서치 방식을 사용하면 시간복잡도를 O(logN)으로 만들 수 있다. 배열이 길어지게 되면 훨씬 효율이 좋다.


배열의 가운데 값을 찾아 찾으려는 값고 크기를 비료해서 절반을 버리는 방식으로 찾는 것이다.
[바이너리 서치 설명](https://en.wikipedia.org/wiki/Binary_search_algorithm)
세상에 희한한 일을 하는 사람들이 많아서, 바이너리 서치를 플라밍고 댄스로 이해해 볼 수도 있다. https://www.youtube.com/watch?v=iP897Z5Nerk


## 바이너리 서치 구현을 위한 연습 01

바이너리 서치를 구현하려면 먼 길을 가야할 것 같은데,
첫 번째 단계로 긴 배열을 받아서 절반만 출력하는 함수를 짜 보았다.

```swift
func leftHalf(_ longArr : [Int]) -> [Int]{
    var halfArr = [Int]()
    for i in 0..<longArr.count/2 {
        halfArr.append(longArr[i])
    }
    return halfArr
}
```

## 바이너리 서치 구현을 위한 연습 02

반대로 오른쪽 함수를 출력하는 함수를 짜고,
중간값과 숫자 하나를 비교해서 한쪽 배열을 출력하는 함수도 만들어 보았다.
```swift
func rightHalf(_ longArr : [Int]) -> [Int]{
    var halfArr = [Int]()
    for i in longArr.count/2..<longArr.count {
        halfArr.append(longArr[i])
    }
    return halfArr
}

func leftRight(_ longArr : [Int], _ x : Int) -> [Int]{
    var middle = longArr[longArr.count/2]
    if middle <= x {
        return rightHalf(longArr)
    } else {
        return leftHalf(longArr)
    }
}
```

## 바이너리 서치 구현을 위한 연습 03

어제 짠 leftRight 함수에 종료 조건을 추가 해 보았다.

```swift
func leftRight(_ longArr : [Int], _ x : Int) -> [Int]{
    if longArr == [] {
        print("끝")
        return []
    }
    var middle = longArr[longArr.count/2]
    if middle < x {
        return rightHalf(longArr)
    } else if middle == x {
        print("찾음")
        return []
    }
    else {
        return leftHalf(longArr)
    }
}
```

그리고 새로운 개념인 '리컬시브 함수'를 배웠다.
한국말로는 재귀함수다.

```swift
func sum(_ to: Int) -> Int {
    return runSum(to, 1, 0)
}

func runSum(_ to: Int, _ i: Int, _ result: Int) -> Int {
    if i == to {
        return result + i
    } else {
        return runSum(to, i + 1, result + i)
    }
}
```
위의 코드 처럼 for문을 돌리지 않고
runSum 함수가 다시 인자를 바꿔서 자기 자신을 부르는 방식으로
sum을 계산해 볼 수 있다.
이처럼 자기 자신을 다시 부르는 함수를 리컬시브 함수라고 한다.
