# 별찍기 02

오늘은 어제에 이어 우측정렬로 별을 찍어보았다.
잘 안돼서 실행시킬 때마다 웬 요상한 별들의 행렬을 잔뜩 찍다가
간신히 자기 전에 성공했다.

```swift
func printStar(_ starcount : Int){
    var star = ""
    for i in 0..<starcount {
        var blankCount = starcount - i
        for j in 0..<blankCount{
            star = star + " "
        }
        var stars = starcount - blankCount
        for k in 0...stars{
            star = star + "*"
        }
        print(star)
        star = ""
    }
}
```

나는 for문을 블랭크 찍는 용도와 별 찍는 용도로 분리해서 사용했는데
일반적으로 이럴 땐 if문을 쓴다고.

```swift
func printStar2(_ starcount : Int){
    var star = ""
    for i in 0..<starcount {
        var blankCount = starcount - i - 1
        for j in 0..<starcount {
            if j < blankCount {
                star = star + " "
            } else {
                star = star + "*"
            }
        }
        print(star)
        star = ""
    }
}
```

선생님은 오늘도 현실 개발에서는 if문이 죄악이라며 내가 짠 코드가 훨씬 좋다고 하셨지만, 나는 현실 개발자가 아니라서 좌절. 현실은 문과생이다..
