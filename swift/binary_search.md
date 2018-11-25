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
