# 서버연동을 위한 HTTP 공부


앱에서 기록된 정보를 서버에 저장하고 싶은데 거기까지 가는 길은 비개발자에게 멀고도 험난하다. 약간의 위로가 되는 점은 무슨 말인지는 모르더라도 대개 들어보거나, 본적이 있는 단어가 많이 나온다는 점이다.


## HTTP란
HyperText Transfer Protocol.
초본문전송규약, 하이퍼본문전송규약이라고도 하며 WWW 상에서 정보를 주고받을 수 있는 프로토콜이다. 보통 80번 포트를 사용한다.


(초본문전송규약이라니... 영어보다 한글이 더 어렵다 ㄷㄷㄷ)


## 리소스 불러오기
GET 이라는 명령어를 써준다. 네이버 웹툰 링크에 나오는 /index.nhn 같은 것으로 시도해 봤지만 https만 제공하고 있어서 telnet 으로 테스트는 불가능했다.

telnet 은 원격 서버에 접속해서 그 서버를 조작할 수 있는 프로그램이다. 보통 포트 번호를 사용해서 접속하게 되면 포트 번호에서 제공하는 서버의 프로토콜을 TCP로 전송할 수 있다.


## TCP란
전송 제어 프로토콜. Transmission Control Protocol.


## URL 이란
Uniform Resource Locator. 하나의 서버에서 여러 리소스를 제공할 수 있는데, 리소스 간에 어떤 것을 가져올지 구분할 수 있게 해주는 규약이다.

URL은 리소스의 위치를 표시하는데 폴더는 /로 구분하고, 한글을 쓸 수 없다.
? 뒤에 쿼리스트링이라는 요소가 있어서 &를 기준으로 나눠서 볼 수 있다.

e.g. https://search.daum.net/search?w=tot&DA=YZR&t__nil_searchbox=btn&sug=&sugo=&q=%ED%95%9C%EB%B9%84%EC%9E%90 에서 ? 뒤에 쿼리스트링을
W=tot / DA = YZR 등으로 &를 기준으로 나눠서 볼 수 있다.


## homebrew
앱스토어 같은 개념으로 생각하면 된다. UI는 대체로 없고 주로 터미널에서 사용하기 위한 프로그램을 설치하는 곳이다. 오늘은 telnet 을 실행하기 위해서 [홈브루](https://brew.sh)를 설치했다.


## HTTP 요청 메시지 구조

HTTP 메시지 구조를 보면 요청라인, 요청헤더, 본문으로 구성되어 있다.
요청라인은 대체로 GET 이나 POST로 시작한다. 그리고 리소스 위치인 URL이 들어가게 된다.


## swift에서 GET 실습
버튼을 하나 만들어서 <신비한 동물사전2> 영화 url의 페이지를 불러와 보았다.

```swift
@IBAction func button01(_ sender: Any) {
    print("까꿍")
    do {
        let url = URL(string: "https://movie.daum.net/moviedb/main?movieId=111490")
        let response = try String(contentsOf: url!)
        print(response)
    } catch let e as NSError {
        print(e.localizedDescription)
    }
}
```


## swift에서 POST 실습

한글 맞춤법 검사기 사이트에 POST방식으로 http 요청을 보내보았습니다.
엄청나게 긴 코드를 작성해야 했는데, 알라모파이어를 쓰면 더 간단하게 할 수 있다고 합니다.

```swift
@IBAction func button01(_ sender: Any) {
    print("까꿍")

    let param = "text1=아버지가방에들어가신다"

    let url = URL(string: "http://speller.cs.pusan.ac.kr/PnuWebSpeller/lib/check.asp")

    var request = URLRequest(url: url!)
    request.httpMethod = "POST"
    request.httpBody = param.data(using: .utf8)

    request.addValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")

    let task = URLSession.shared.dataTask(with: request) {(data, response, error) in
        let string1 = String(data: data!, encoding: String.Encoding.utf8)
        print(string1)
    }

    task.resume()

}
```


## Alamofire를 사용한 POST방식 실습

Alomofire라는 라이브러리를 사용하면 좀 더 쉽게 웹API를 호출할 수 있다.
https://github.com/Alamofire/Alamofire
Xcode 의 클론 기능을 활용하여 Alamofire 소스코드를 직접 프로젝트에 포함시켰다.
그리고 바로 위의 POST방식 실습을 아래와 같은 짧은 코드로 작성할 수 있다.

```swift
let param: Parameters = [
    "text1": "아버지가방에들어가신다"
]
Alamofire.request("http://speller.cs.pusan.ac.kr/PnuWebSpeller/lib/check.asp",
                  method: .post,
                  parameters: param,
                  encoding: URLEncoding.httpBody).responseString() { response in
                    print(response.result.value!)
}
```


## CocoaPods로 Alomofire 추가하기

Xcode의 클론 기능 대신 CocoaPods를 사용해서 Alomofire를 추가할 수 있다.
개발꼬꼬마 입장에서 클론 기능이 훨씬 편했으나,
클론으로는 많은 오픈 소스의 버전관리를 해 줄 수 없다고 한다.


나는 Alomofire 딱 하나만 쓸 건데 그냥 클론으로 하면 안 돼요? 하고
소심하게 반행해 보았으나, 향후 확장성에 대한 고려도 해야하고,
어쨌거나 모든 개발자가 다 CocoaPods를 쓰고 있다고 하니 멍청이 임을 굳이 티내고 싶지 않다면 그냥 CocoaPods ㄱㄱ

```swift
import Alamofire
```
클론 기능을 쓰지 않은 상태라 임포트를 하더라도  하단 코드가 오류가 난다.
저장 후 파일을 닫고, 터미널을 열어서 CocoaPods을 설치한다.
https://github.com/Alamofire/Alamofire#installation

터미널에서 Podfile을 만들고 인스톨 가이드 대로 버전을 맞게 잘 적어준다.
```
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '12.0'
use_frameworks!

target 'Cocoapods' do
  pod 'Alamofire', '~> 4.7'
end
```
이 파일을 저장한 후 터미널에서 Pod stall 을 해주면 끗.
