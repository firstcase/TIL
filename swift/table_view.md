# 테이블 뷰 만들기

테이블 뷰를 만들 때는 View Controller 를 만들고 거기에 테이블 뷰를 넣어줄 수도 있고,
처음부터 Table View Controller를 끌어다 넣을 수도 있다.

귀찮기 때문에 Table View Controller를 끌어다 넣었다.
스토리보드와 연동할 파일을 형성하고 클래스를 만들어준다.

그리고 두 개의 메소드를 override 해주면
몇 개의 테이블을 보여줄지,
그 테이블에 어떤 텍스트를 넣을지를 할당할 수 있다.

```swift
class TableViewController : UITableViewController  {

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ListCell")!
        if indexPath.row == 0 {
            cell.textLabel?.text = "자기감시 테스트"
        } else {
            cell.textLabel?.text = "자존감 테스트"
        }

        return cell
    }

}
```

2개의 테이블에 서로 다른 테스트의 이름을 넣어주었다.
아직은 2개라서 if문으로 할당했지만, 향후 배열로 바꿔 줘야 할 것으로 보인다.


# 테이블 뷰에서 화면 전환하기

테이블 뷰에서 셀을 누르면 다음 화면으로 전환하는 기능을 추가했다.
아직 테스트가 1개 밖에 구현이 안된 상태라 두번째 셀을 눌렀을 때는 숫자를 출력하도록 했다.


```swift
override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            let t01 = self.storyboard!.instantiateViewController(withIdentifier: "TestNo1")
            self.present(t01, animated: true)
        } else if indexPath.row == 1 {
            print("1")
        }
    }
```
