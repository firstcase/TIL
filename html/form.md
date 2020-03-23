# Form이란?

https://developer.mozilla.org/ko/docs/Learn/HTML/Forms/Your_first_HTML_form

1. HTML 폼이란?
- 사용자가 웹페이지에 값을 입력했을 때 그 값을 서버로 넘겨주는 일을 하는 태그, 혹은 위젯

2. HTML 직접 다뤄보기
* <form> 요소
```html
<form action="/my-handling-form-page" method="post">

</form>
```
  - action : 데이터를 보낼 URL을 지정함
  - method : 어떤 HTTP 방식을 사용할 것인지 지정함(GET or POST)

* <label>, <input>, <textarea> 요소 추가하기
```HTML
<form action="/my-handling-form-page" method="post">
    <div>
        <label for="name">Name:</label>
        <input type="text" id="name" />
    </div>
    <div>
        <label for="mail">E-mail:</label>
        <input type="email" id="mail" />
    </div>
    <div>
        <label for="msg">Message:</label>
        <textarea id="msg"></textarea>
    </div>
</form>
```
  * <div> : 스타일링을 편리하게 해줌, css 적용 시 사용
  * <label> : 입력받는 칸 왼쪽에 표시되는 내용
  * <input> :
    + type 속성이 중요함. text 속성은 유효성 검사 없이 모든 종류의 텍스트를 받음. email은 지능형 필드의 종류로 유효성 체크함.
    + id : input을 통해 입력받은 값의 변수명, 서버에서 변수명을 통해 해당값을 인식함.
    + input 태그는 자동닫힘 태그다. 끝날 때 반드시 "/" 닫는 태그를 추가해야 함.
  * <textarea> : 자동닫힘 태그가 아니므로 반드시 엔딩태그를 사용해서 요소를 종료해줘야 함.


  3. <botton> 요소로 끝내기
  ```HTML
  <form action="/my-handling-form-page" method="post">
    <div>
        <label for="name">Name:</label>
        <input type="text" id="name" />
    </div>
    <div>
        <label for="mail">E-mail:</label>
        <input type="email" id="mail" />
    </div>
    <div>
        <label for="msg">Message:</label>
        <textarea id="msg"></textarea>
    </div>

    <div class="button">
        <button type="submit">Send your message</button>
    </div>
</form>
```
- submit : 버튼을 클릭하면 폼 데이터가 <form>요소의 action 속성에 정의된 웹페이지에 전송됨
- reset : 버튼을 클릭하면 모든 폼 위젯을 기본 값으로 바꿈. UX관점에서 안좋음.
- <input>요소로 버튼 유형을 만들 수도 있음. <input>요소는 일반 텍스트만 보내는 반면 <botton> 요소는 전체 HTML콘텐츠를 보냄


4. CSS로 예쁘게 만들기
- 가운데 정렬 & 테두리
```CSS
form {
    /* Just to center the form on the page */
    margin: 0 auto;
    width: 400px;
    /* To see the outline of the form */
    padding: 1em;
    border: 1px solid #CCC;
    border-radius: 1em;
}
```

- 폼 위젯 사이에 여백 추가
```CSS
form div + div {
    margin-top: 1em;
}
```

- 레이블 정렬
```CSS
label {
    /* To make sure that all label have the same size and are properly align */
    display: inline-block;
    width: 90px;
    text-align: right;
}
```

- 하이라이트 효과 추가
```CSS
input:focus, textarea:focus {
    /* To give a little highlight on active elements */
    border-color: #000;
}
```

5. 웹서버로 데이터 보내기
- 데이터 이름을 지정하려면 데이터를 받는 각 폼 위젯에 name 속성을 지정해야 함
```HTML
<form action="/my-handling-form-page" method="post">
    <div>
        <label for="name">Name:</label>
        <input type="text" id="name" name="user_name" />
    </div>
    <div>
        <label for="mail">E-mail:</label>
        <input type="email" id="mail" name="user_email" />
    </div>
    <div>
        <label for="msg">Message:</label>
        <textarea id="msg" name="user_message"></textarea>
    </div>

    <div class="button">
        <button type="submit">Send your message</button>
    </div>
</form>
```
- "user_name", "user_email", "user_message"로 지정된 데이터는 action에 지정된 URL로 POST 방식으로 전송됨
- 서버측에서는 HTTP 요청에 의해 구현된 3개의 키/밸류 항목의 목록 데이터를 받게 된다.

6. 폼을 구성하는 다양한 엘리먼트
- <fieldset> : 폼 태그 안에 관련있는 폼 엘리먼트들을 그룹화 할 때 사용
- <legend> : 그룹화한 폼 엘리먼트들을 목적ㅇ 맞게 이름을 지정합니다.
```HTML
<html>  
    <head>
    </head>

    <body>
        <form action = "#" accept-charset="utf-8" name = "person_info" method = "get">
            <fieldset style = "width:150">
                <legend>개인 정보 입력</legend>
                    이름 : <input type = "text" name = "name"/><br><br>
                    나이 : <input type = "text" name = "age"/><br><br>
            </fieldset>
            <br>
            <fieldset style = "width:180; height:180">
                <legend>여가 활동</legend>
                    취미 : <input type = "text" name = "hobby"/><br><br>
                    특기 : <input type = "text" name = "specialty"/><br><br>
            </fieldset>
        </form>
    </body>
<html>  
```
- 다양햔 input 태그 알아보기
  + type : 태그 모양을 다양하게 변경할 수 있습니다. type에는 text, radio, checkbox, password, button, hidden, fileupload, submit, reset 등을 지정할 수 있습니다.
  + name : 태그 이름을 지정합니다.
  + readonly : 태그를 읽기전용으로 합니다.
  + maxlength : 해당 태그 최대 글자 수를 지정합니다.
  + required : 해당 태그가 필수태그로 지정됩니다. 필수 태그를 입력하지 않고, submit 버튼을 누르면 에러메시지가 웹 브라우저에 출력됩니다. (HTML5 추가사항)
  + autofocus : 웹 페이지가 로딩되자마자 이 속성을 지정한 태그로 포커스가 이동됩니다. (HTML5 추가사항)
  + placeholder : 태그에 입력할 값에 대한 힌트를 줍니다. (HTML5 추가사항)

```HTML
<html>  
    <head>
    </head>

    <body>
        <form action = "#" accept-charset="utf-8" name = "person_info" method = "get">
            <fieldset style = "width:150">
                <legend>개인 정보 입력</legend>
                   이름 : <input type = "text" name = "name" required/><br><br>
                   주민번호 : <input type = "text" name = "security_number"
                              pattern = "\d{6}\-\d{7}"
                              title = "123456-1234567 형식으로 입력해주세요"/><br><br>

                   아이디 : <input type = "text" name = "id"/><br><br>
                   패스워드 : <input type = "password" name = "password"/><br><br>

                   성별 : 남<input type = "radio" name = "gender" />
                          여<input type = "radio" name = "gender" /><br><br>

                   관심사 : 연예<input type = "checkbox" name = "checkbox1" />
                            스포츠<input type = "checkbox" name = "checkbox2" />
                            IT<input type = "checkbox" name = "checkbox3" /><br><br>

                   <input type = "submit" value = "submit"/>
                   <input type = "reset" value = "reset"/><br><br>
            </fieldset>
        </form>
    </body>
<html>  
```

7. 실제 적용할 때 url을 어떻게 설정해줄 수 있을까?
- 결과를 전송하기 위해서 url을 새로 만든다.
- 화면이 없더라도 전송을 받기 위한 페이지를 만들 수 있다. 리다이렉트를 걸어주면 된다.
