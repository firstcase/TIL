# 타입 프로퍼티
## 프로퍼티와 인스턴스 구분의 멘붕

타입이 프로퍼티를 가질 수 있다. <- 이 말을 이해하기 위해서 '프로퍼티'란 무엇인가를 면밀하게 이해해야 했다. 문제는 인스턴스랑 프로퍼티 구분을 잘 못하고 있었던 것. 코드에 적힌 것들을 열심히 짚으면서 뭐가 인스턴스고 뭐가 프로퍼티인지 물어보았지만 알면 알 수록 알쏭달쏭한 느낌이 있었다. 심지어 어떤 것은 인스턴스이면서 프로퍼티일 수도 있다는 걸 알게 되었다.

```swift
class Question {
    var contents : String?
    var score : Int?
    static var max : Int?

    func show() {
        print(contents)
        print(score)
    }
```

타입 프로퍼티를 선언하고 뷰 컨트롤러에서 코드를 짜봤다.


que1 이나 que2 에서는 Question의 프로퍼티인 contents나 score를 자유롭게 불러서 쓸 수 있지만 타입 프로퍼티인 max는 불러서 쓸 수 없었다. 타입의 고유한 속성을 지정할 때 쓰면 좋을 것 같다.

```swift
override func viewDidLoad() {
        super.viewDidLoad()
        var que1 = Question()
        var que2 = Question()
        Question.max = 10
        que1.contents = "느그 아부지 모하시노"
        que1.score = 1004
        que2.contents = "모히또 가서 몰디브 마실래?"
        que2.score = 222
        que1.show()
        que2.show()
    }
  ```
