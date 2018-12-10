# 별찍기 01


원래 지난주 내내 바이너리 서치 구현을 공부하고 있었는데,
선생님이 갑자기 바이너리 서치 중단을 선언했다.
아직 모르는게 많아서 더이상 진행이 어렵겠다고...
선생님 왜 그럼 전 일주일이나 바이너리 구현을 위해 노동한 건가요...


오늘은 [별찍기1번 문제](https://www.acmicpc.net/problem/2438)를 풀어보았다.

```swift
func printStar(_ starcount : Int){
    var star = ""
    for _ in 0..<starcount {
        star = star + "*"
        print(star)
    }
}
```
