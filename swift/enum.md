# 열거형

열거형을 사용하면 코드를 좀 더 직관적으로 사용할 수 있다.
왼쪽을 1, 오른쪽을 2로 할당한 뒤 방향에 따라 오른쪽 왼쪽을 출력하는 코드를 짠다면 아래와 같다.

```swift
var answer = 1
        if answer == 1 {
            print("왼쪽")
        } else if answer == 2 {
            print("오른쪽")
```

이 경우 코드가 직관적이지 못하고, 또 실수로 3을 할당하는 경우 오류가 날 수 있다. 이럴 때 enum 을 사용해서 열거형을 만들 수 있다.

```swift
class ViewController: UIViewController {
    enum Direction {
        case left
        case right
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        var answer = Direction.left
        if answer == .left {
            print("왼쪽")
        } else if answer == .right {
            print("오른쪽")
        }
    }
```
