# 가장 많이 쓰인 알파벳 뽑기

오늘은 갑자기 알파벳을 뽑는 바람에
안쓰던 Character타입과 딕셔너리 구조까지 써야 해서
심적으로 힘들었다.

```swift
func findOne(_ word : String) -> Character {
    let wordUp = word.uppercased()
    var findStep = [Character : Int]()

    for i in 0..<word.count {
        var comparisonValue = wordUp[String.Index(encodedOffset: i)]
        var repeatNumber = 0
        for j in 0..<word.count {
            if comparisonValue == wordUp[String.Index(encodedOffset: j)] {
                repeatNumber = repeatNumber + 1
            }
            findStep[wordUp[String.Index(encodedOffset: i)]] = repeatNumber
        }
    }
    var kValue : Character = " "
    var vValue = 0
    var extraCase = 0
    for (k, v) in findStep {
        if v > vValue {
            vValue = v
            kValue = k
        } else if v == vValue {
            extraCase = v
        }
    }
    if extraCase > vValue {
        return "?"
    }
    return kValue
}
```

오늘은 선생님도 나와 같은 문제를 풀었는데
선생님은 함수형 언어로 코딩을 해서 여섯줄로 완성했다.
혼자 힘으로 빨리 짰다고 기뻐하고 있었는데,
그 코드를 보고 기분이 몹시 나빠지고 말았다. 대굴욕의 날...
