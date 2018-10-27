# if문이 떼거지로 나올 때


설문 응답을 하고 '다음' 버튼을 눌렀을 때


1) 문항에 따른 점수를 계산해주고


2) 하지만 문항 응답을 안했을 때는 다음 문항을 보여주면 안되고


3) 마지막 문항이었다면 다음 결과 화면을 불러주는


이런 펑션을 구현하려고 하니까 과도한 if를 쓰게 되어서
좀 더 가독성이 좋은 코드를 구현하기 위해서
isAnswered 라는 메소드를 만들어서 버튼의 맨 앞에 넣어주었다.
이렇게 하면 전체 코드 길이는 늘어나지만, 좀더 직관적으로 버튼이 눌릴 때 응답이 있는지를 체크한다는 걸 알 수 있게 된다.

```swift
func isAnswered() -> Bool {
        if curruntAnswer == true || curruntAnswer == false {
            return true
        } else {
            return false
        }
    }

    @IBAction func nextButton(_ sender: Any) {
        if isAnswered() == false {
            return
        }

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
            curruntAnswer = nil
        }
    }
    ```
