# 트리구조

자료구조의 대표적인 예로는 리스트, 스택, 큐, 트리가 있다.
오늘은 이 중 트리에 대해서 공부해 보았다.

```swift
class Node {
  var value : Int
  var left : Node
  var right : Node
}
```

링크드 리스트는 value와 node로 구성된 반면, 트리는 left와 right라는 노드를 각각 갖는다.


트리는 검색에 최적화된 자료구조이다. 또 논리 구조를 표현할 때도 트리를 사용하면 좋다. html도 계층적 구조를 갖고 있어서 트리로 표현된다. 프로그래밍의 문법도 트리 구조로 가지고 있다. 컴파일을 하는 중간 단계에서도 코드를 트리형태로 분석한다. 그걸 AST라고 부른다.


트리구조의 간단한 데이터를 만들어 보았다.
```swift
class Node {

    var value : String?
    var left : Node?
    var right : Node?

    init(_ value : String) {
        self.value = value
    }
}
```
Node 클래스를 만들고

```swift
var a = Node("동물")
        var b = Node("고양이")
        var c = Node("호랑이")
        var d = Node("치타")
        var e = Node("강아지")
        var f = Node("쫑")
        var g = Node("불도그")

        a.left = b
        b.left = c
        b.right = d
        a.right = e
        e.left = f
        e.right = g

        print(a.right?.right?.value)
```
데이터 구조를 만들어주면 a값만 가지고도 "불도그"를 출력할 수 있게 된다.
