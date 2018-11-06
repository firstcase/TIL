# Extensions


이미 있는 클래스에 아래 네 가지를 추가할 수 있다.

- 새로운 연산 프로퍼티
- 새로운 메소드
- 새로운 초기화 구문 (init)
- 프로토콜 구현


'바'라는 글자가 포함 여부에 따라 true 나 false를 출력하는 새로운 메소드를 추가해 보았다.
```swift
extension String {
    func newMethod() -> Bool {
        if self.contains("바") {
            return true
        } else {
            return false
        }
    }
}
class ViewController: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()

        var a = String("보멍청이똥개말미잘")
        print(a.count)
        print(a.sorted())
        print(a.newMethod())
    }
}
```
