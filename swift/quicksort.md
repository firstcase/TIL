# 퀵 정렬

1. 분할정복
분할정복(divid-and-conquer)전략은 문제해결 방법 중 가장 유명한 재귀적 기술이다.
분할 정복 전략으로 문제를 풀 때는 두가지 단계를 거친다.

- 기본 단계를 해결한다. 이 부분은 가능한 한 간단한 문제여야 한다.
- 문제가 기본단계가 될 때까지 나누거나 작게 만든다.

```swift
func sum(_ list : [Int]) -> Int {
  if list == [] {
    return 0
  }
  return list[0] + sum(Array(list.dropFirst()))
}
```

2. 퀵 정렬
정렬 알고리즘으로 선택 정렬보다 훨씬 빠르고 자주 사용된다.
비어있는 배열이나 원소가 하나인 배열이 기본 단계가 된다.

원소가 세 개가 되면 분할 정복 전략을 사용해서 배열이 기본단계가 될 때까지 나눠야 한다.
우선 배열 중에서 원소 하나를 고른다. 이를 기준 원소(pivot)이라고 한다.
모든 원소를 기준원소보다 작은 원소와 큰 원소로 분류한다. 이것을 분할(partitioning)이라고 한다.
이 하위 배열에 대해 재귀적으로 퀵 정렬을 호출한다.

```swift
func quicksort(_ array : [Int]) -> [Int]{
    var pivot = 0
    var less : [Int] = Array()
    var greater : [Int] = Array()
    if array.count < 2 {
        return array
    } else {
        pivot = array[0]
        less = array.dropFirst().filter({$0 <= pivot})
        greater = array.dropFirst().filter({$0 > pivot})
    }
    return quicksort(Array(less)) + [pivot] + quicksort(Array(greater))
}
```

3. 빅오 표기법 복습

퀵 정렬은 선택한 기준 원소에 따라 처리 속도가 달라진다는 특징이 있다.
최악의 경우 선택 정렬만큼  느리다. 하지만 평균적인 경우에는 O(n log n) 실행 시간을 가진다.

병합정렬과 퀵 정렬의 경우 빅오 표기법상 걸리는 시간은 같지만 상수항의 차이가 있다.
서로 다른 빅오 표기법의 시간을 가질 경우 상수항은 의미가 없지만
같은 빅오 실행시간이 걸릴 경우 상수항이 더 작은 쪽이 더 적은 시간이 걸린다.
