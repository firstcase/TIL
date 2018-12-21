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

# 트리 문제풀기

트리의 root node 를 인자로 받아서 "라이언"이 포함된 데이터 개수를 출력하는 함수를 짜 보았다. for문을 돌릴 수 있을 것 같은 느낌이 들지만, 생각보다 어떻게 돌려야 할지 상황이 난감해서 일단은 3단 트리라고 가정하고 if문을 모두 작성했다.

```swift
func countRyanIn(_ word : Node) -> Int {
    var result = 0
    var finder = "라이언"
    if word.value == finder {
        result = result + 1
    }
    if word.right?.value == finder {
        result = result + 1
    }
    if word.left?.value == finder {
        result = result + 1
    }
    if word.right?.left?.value == finder {
        result = result + 1
    }
    if word.right?.right?.value == finder {
        result = result + 1
    }
    if word.left?.right?.value == finder {
        result = result + 1
    }
    if word.left?.left?.value == finder {
        result = result + 1
    }
    return result
}
```
결과는 잘 나오지만 짜면서도 뭔가 계속 반복된 것을 적는 느낌이 들어서 이런 코드를 짜도 될까 하는 죄책감이 든다.

재귀를 이용하면 좀 더 짧게 짤 수 있다. 재귀로 짠 건 사실 내가 짜지는 않았고 선생님이 짜서 보여주었다.
```swift
func countRyanIn2(_ word : Node) -> Int {
    var result = 0
    if (word.value == "라이언") {
        result = 1
    }
    if (word.left == nil && word.right == nil) {
        return result
    } else {
        return result + countRyanIn2(word.left!) + countRyanIn2(word.right!)
    }
}
```
