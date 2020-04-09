# 자바스크립트 form의 submit을 실행하는 방법

- 보통은 form 전송에 input 태그의 type="submit"을 사용함
- 그런데 html 문서를 확장해서 쓸 경우 부모 파일에 submit 기능이 있고 하위 파일에 form 데이터가 있을 수 있다. 이런 경우 부모 파일에서 form 데이터를 받아서 submit을 해줄 수 있음.
- 아래 예시는 부모 파일에서 확장된 파일의 설문응답이 모두 완료되었는지를 체크하는 함수다. 체크 후 모든 문항 응답이 완료되면 submit이 실행된다.
- getElementById()함수를 사용하면 submit()함수를 사용할 수 있게 된다. 

```Python
function check() {

            var allChecked = true;
            for(var i = 1; i <= 35; i++) {
                var answer = getAnswer(i);
                if(answer == undefined) {
                    allChecked = false;
                    break;
                }
            }

            if(!allChecked) {
                alert("모든 문항에 응답해야 합니다");
            } else {
                var form = document.getElementById("surveyForm");
                form.submit();
```
