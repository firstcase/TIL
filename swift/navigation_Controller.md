# 네비게이션 컨트롤러


네비게이션 컨트롤러를 추가하고, 새로운 화면을 나타나고 닫는 방법을 공부했다.
화면을 나타나게 할 때는 : pushViewController
화면을 닫을 때는 : popViewController

```swift
override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            let t01 = self.storyboard!.instantiateViewController(withIdentifier: "TestNo1")
            self.navigationController?.pushViewController(t01, animated: true)
        } else if indexPath.row == 1 {
            print("1")
        }
```


테스트를 선택하면 화면을 나타나게 해준다.
present를 쓰지 않고 navigationController를 쓰면 옆에서 화면이 들어오는 애니메이션이 생성되고 뒤로 버튼이 좌측 상단에 나타난다.


```swift
if number == 18 {
            // 스코어 값이랑 화면을 넘겨줘
            guard let a = self.storyboard!.instantiateViewController(withIdentifier: "RVC" ) as? ResultViewController else {
                return
            }
            a.score = self.score

            present(a, animated: false)
            self.navigationController?.popViewController(animated: false)
        } else {
            questionBox.text = questions.Q[number]
            invisibleRadioButton.deselectOtherButtons()
        }
    }
```


마지막 ResultViewController 에서 닫기 버튼을 누르면 처음 화면이 나올 수 있도록 ResultViewController 화면을 불러올 때 navigationController 화면을 얼른 닫아 주기로 했다.


```swift
@IBAction func resultCloseButton(_ sender: Any) {
        self.dismiss(animated: true) {
        }
    }
```


ResultViewController를 닫는 버튼을 만들 때는 self.dismiss를 써주면 된다.
