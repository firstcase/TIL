# 자존감테스트 연산 수정

yes/no 버튼을 누를 때 score에 가산하는 코드를 넣었는데 그럴 경우 사용자가 응답을 번복할 때 연산이 와구와구 일어나기 때문에 next 버튼 뒤로 연산을 옮겼다. 이를 위해서 if 구문 내에 if를 한 번 더 썼다.

if + else if 조합이나 switch 구문도 고려했으나 적절하지 않은 듯해서 탈락함.


```swift
@IBAction func yes(_ sender: Any) {
    curruntAnswer = true
}

@IBAction func no(_ sender: Any) {
    curruntAnswer = false
}

@IBAction func nextButton(_ sender: Any) {
    if curruntAnswer == true {
        if number ==  3 || number == 4 || number == 5 || number == 7 || number == 9 || number == 11 || number == 16 || number == 17  {
            score = score + 1
        }
    }

    if curruntAnswer == false {
        if number ==  0 || number == 1 || number == 2 || number == 6 || number == 8 || number == 10 || number == 12 || number == 13 || number == 14 || number == 15   {
            score = score + 1
        }
    }
    number = number + 1
    ...
} 
```
