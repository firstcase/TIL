# 타입 메소드

타입 메소드는 타입 프로퍼티처럼 인스턴스를 생성하지 않고 부를 수 있는 메소드를 말한다.
자칫 static func 로 써주면 될 것 같은 느낌이지만, 의외로 class func 로 쓴다.
자바에서는 static 메소드라고 부르고 static func 로 써주는 것 같다.

```swift
class Question {
    var contents : String?
    var score : Int?
    static var max : Int?

    func show() {
        print(contents)
        print(score)
    }

    class func getClassDescription() -> String {
        return "질문을 담는 클래스"
  ```

  예시로 UIViewController.을 쳐보면 많은 타입 메소드들이 나온다.
