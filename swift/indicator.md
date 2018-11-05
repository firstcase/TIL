# Activity Indicator View

시간 지연을 표시하는 spinner 를 추가해 보았다.
Inspector에서 Animating을 체크하면 항상 뱅글뱅글 돈다.
그러면 spinner.startAnimation() 을 쓰지 않고 hidden 설정만 해주면 된다.

```swift
@IBAction func button(_ sender: Any) {
    spinner.isHidden = false

    let param: Parameters = [
        "text1": "아버지가방에들어가신다"
    ]
    Alamofire.request("http://speller.cs.pusan.ac.kr/PnuWebSpeller/lib/check.asp",
                      method: .post,
                      parameters: param,
                      encoding: URLEncoding.httpBody).responseString() { response in
                        print(response.result.value!)

                        self.spinner.isHidden = true

    }
}
```
