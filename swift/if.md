# 자존감테스트 연산 수정


## if { if }


yes/no 버튼을 누를 때 score에 가산하는 코드를 넣었는데 그럴 경우 사용자가 응답을 번복할 때 연산이 와구와구 일어나기 때문에 next 버튼 뒤로 연산을 옮겼다. 이를 위해서 if 구문 내에 if를 한 번 더 썼다.

if + else if 조합이나 switch 구문도 고려했으나 적절하지 않은 듯해서 탈락함.


```swift
@IBAction func yes(_ sender: Any) {
    currentAnswer = true
}

@IBAction func no(_ sender: Any) {
    currentAnswer = false
}

@IBAction func nextButton(_ sender: Any) {
    if currentAnswer == true {
        if number ==  3 || number == 4 || number == 5 || number == 7 || number == 9 || number == 11 || number == 16 || number == 17  {
            score = score + 1
        }
    }

    if currentAnswer == false {
        if number ==  0 || number == 1 || number == 2 || number == 6 || number == 8 || number == 10 || number == 12 || number == 13 || number == 14 || number == 15   {
            score = score + 1
        }
    }
    number = number + 1
    ...
}
```


## if 와 else if


세 개의 구간에 따라 다른 멘트를 출력하기 위한 코드를 적었다. 이럴 때는 else if를 활용하면 효율적이다.

```swift
override func viewDidLoad() {
        super.viewDidLoad()
        scoreBox.text = "\(score) 점"

        if score <= 5 {
            comment.text = "자기 감시 성향이 낮습니다. 자기감시가 낮은 사람은 상황이나 타인을 신경쓰지 않습니다. 자신의 기분과 원칙에 의해서 움직입니다."
        } else if score > 5 && score <= 11 {
            comment.text = "자기 감시 성향은 보통입니다. 자신의 기분과 원칙 vs 타인의 행동과 상황을 비슷한 수준으로 고려합니다."
        } else {
            comment.text = "자기 감시 성향이 높습니다. 자기 감시가 높은 사람은 자신의 행동을 사회기준에 맞추려고 합니다. 상황이나 타인의 행동에 신경을 많이 쓰는 편입니다."
        }
    }
```
