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


Node에 인덱스를 넣으면 값을 반환하는 메소드를 만들어 보았다.
옵셔널타입 이슈로 핵빡셈 주의...

```swift
class Node {

    var value : Int?
    var next : Node?

    func geta ( _ index : Int) -> Int? {
        var final : Node? = self
        if index == 0 {
            return value
        }
        for _ in 0 ... index - 1 {
            final = final?.next
        }

        return final?.value
    }

}
```


이번에는 value를 넣으면 해당 밸류를 가진 Node의 index를 출력하는 메소드를 만들어 보았다.
```swift
func firstIndexOf(_ value : Int) -> Int? {
    var final : Node? = self
    var n : Int = 0
    while final != nil {
        if final?.value == value {
            return n
        }
        n = n + 1
        final = final?.next
    }
    return nil
}
```


이번에는 모든 Node의 value를 출력하는 printAll이라는 메소드를 만들어 보았다.
매일 메소드를 짜다보니 오늘쯤은 조금 익숙해졌다.
```swift
func printAll(){
    var final : Node? = self
    while final != nil {
        print("\(final?.value)")
        final = final?.next
    }
}
```
