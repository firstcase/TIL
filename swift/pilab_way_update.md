# 파이랩 웨이 앱업뎃을 위한 기획

## 어떤 기능을 추가해볼까?
- 팀원 생일 알림 기능
- 비가 올 때 우산을 챙기라는 푸시 알람
- 첫 페이지를 추가해서 시험보는 기능 외 포털기능을 강조
(성남시 미세먼지 농도, 생일 알림 등을 보는 포털??)
- 문제풀이 난이도를 올리기 위해 빈칸 2개씩 뚫기
- 커피 사기, 간씩 쏘기 용도의 랜덤 팀원 추출 기능

## 계획
1월 중순 배포 예정으로 부담없이 하려면
위의 기능 중에 2~3개 정도 골라서 하면 될 듯!


----------------------------------------------
참고 자료 모으기
----------------------------------------------
- 생일알림 기능 관련 정보 (https://stackoverflow.com/questions/44632876/swift-3-local-notification-at-specific-date)
- 비올 때 푸시 알림을 하려면 날씨 정보를 어떻게 받아올 수 있나 해서 [기상자료개방포털](https://data.kma.go.kr/)에 들어가보려고 했으나, 인증서가 만료되어 사이트 접근도 불가능한 상태였다. ~가는 날이 장날...~
- 팀원 랜덤 뽑기 관련
swift에는 여러가지 랜덤 함수가 있는데  
로직상 난수를 생성하는 건 매 한가지 인데, 미묘하게 다른 방식으로 뽑아주는 종류들이 있다.  
팀원 랜덤 뽑기의 경우 팀원 이름으로 된 array에서 하나를 랜덤하게 뽑는 방식이 제일 좋을 것 같다.
```swift
let names = ["Arthur", "Ford", "Zaphod", "Marvin", "Trillian"]

let random = names[Int(arc4random_uniform(UInt32(names.count)))]  
print(random)  
```
```swift
extension Array  
{
    func random() -> Element  
    {
        return self[Int(arc4random_uniform(UInt32(self.count)))]  
    }
}
```
```swift
let names = ["Arthur", "Ford", "Zaphod", "Marvin", "Trillian"]  
print(names.random())  
// Output: Trillian
```
