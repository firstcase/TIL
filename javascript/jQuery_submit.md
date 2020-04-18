# .submit()
https://api.jquery.com/submit/

- 서밋 함수를 이용하면 html 코드를 고치지 않고 서밋 기능을 핸들링할 수 있다.
- 아래와 같은 문법으로 사용할 수 있다. event.preventDefault를 사용하면 submit을 막아준다. 
```JavaScript
$( "#target" ).submit(function( event ) {
  alert( "Handler for .submit() called." );
  event.preventDefault();
});
```

- 실제 적용할 때 이슈
  + extends로 확장된 문서에서 form이 생성된 후에 작동해야 하는데 부모 문서에 코드가 있다보니 추가적인 처리가 필요했음.
  ```JavaScript
          $(document).ready(function () {
            $("#surveyForm").submit(function (event) {
                if(isAllChecked()) {
                    return;
                }
                alert("모든 문항에 응답해야 합니다");
                event.preventDefault();
            });
  ```
