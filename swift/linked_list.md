# Linked List


자료구조의 하나로,
각 데이터를 포인터로 연결해서 관리하는 방식을 말한다.


Node 클래스를 생성하고 value 프로퍼티에 값을 할당한다.
이렇게 하면 a의 다음다음 값인 c에 할당된 숫자를 출력할 수 있다.

```swift
var a = Node()
        a.value = 1

        var b = Node()
        b.value = 8

        var c = Node()
        c.value = 7

        a.next = b
        b.next = c

        print(a.next?.next?.value!)
```
