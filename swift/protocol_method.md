# 프로토콜 메소드

모든 클래스가 공통적으로 따라야하는 규칙을 선언하는 것
프로토콜을 따르는 모든 클래스들은 동일 메소드를 갖게 되고, 그렇게 되면 메소드가 서로 다른 클래스를 모두 인자로 받을 수 있다. 프로토콜 타입으로 받게 되는 것임.


[초보용 안내]포풍 클래스를 형성하고 여기저기서 메소드를 만들어다가 뷰컨트롤러에서 짬뽕을 해대는 통에 약간 멘붕이 올 수 있음 주의.

```swift
protocol PrinterProtocol {
    func read() -> String?
}
```

```swift
class Printer {

    static func display(_ x : PrinterProtocol) {
        print(x.read())
    }
}
```

```swift
Printer.display(haha)
Printer.display(que1)
// haha와 que1은 서로 다른 클래스이지만 프로토콜 메소드를 사용해서 둘 다 인자로 받을 수 있게 되었다!
```
