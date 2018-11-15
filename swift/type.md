# 데이터 타입

분수를 더하는 함수를 만들어 보았다
```swift
func plusRatio(_ x1 : Int, _ x2 : Int, _ y1 : Int, _ y2 : Int) -> Double {
    return Double((x2 * y1) + (y2 * x1)) / Double(x1 * y1)
}
```

두 개의 분수를 더하는데 네 개의 인자를 받는 것이 번거롭다.
분수 타입을 만들어보기 전에 연습으로 스트링 타입 데이터를 받아서 연결하는 함수를 만들어 보았다.
```swift
func plusString(_ x : String, _ y : String) -> String {
    return "\(x)\(y)"
}
```

분수를 더하기 위해서 Ratio 타입을 만들어 보았다.
```swift
class Ratio {
    var numerator : Int
    var denominator : Int

    init(_ x : Int, _ y : Int) {
        numerator = x
        denominator = y
    }

    func plus(_ x : Ratio) -> Ratio {
        var h = (numerator * x.denominator) + (denominator * x.numerator)
        var i = denominator * x.denominator
        return Ratio(h, i)
    }


}
```

뷰 컨트롤러에서 Ratio 타입을 더하는 함수를 만들어 보았다.
```swift
func plusRatio(_ x : Ratio, _ y : Ratio) -> Ratio {
    return x.plus(y)
}
```
