# CSS 기초
https://developer.mozilla.org/ko/docs/Learn/Getting_started_with_the_web/CSS_기본

0. CSS?
- Cascading Style Sheets, 웹페이지를 꾸미려고 작성하는 코드.
- 프로그래밍 언어는 아님, Style sheet 언어다.

1. CSS ruleset
- 선택자(selector) : rule set의 맨앞에 있는 HTML요소 이름. 이것은 꾸밀 요소를 선택한다.
- 선언 : 단일 규칙으로 꾸미고자 하는 요소의 속성을 명시함.
- 속성(property) : 주어진 HTML 요소를 꾸밀 수 있는 방법. rule 내에서 영향을 줄 속성을 선택한다.
- 속성값 : 속성의 오른쪽 콜론 뒤에 주어진 속성을 위한 값을 준다.

2. 선택자의 종류
- 요소 선택자 : p
- 아이디 선택자 : #my-id
- 클래스 선택자 : .my-class
- 속성 선택자 : img[src]
- 수도 클래스 선택자 : a:hover

3. 박스의 모든 것
- 페이지에 있는 대부분의 HTML요소들은 서로의 위에 놓여있는 박스로 생각할 수 있다.
- CSS 레이아웃도 박스모델을 주 기반으로 하고 있다.
  + padding : 콘텐트 주위의 공간
  + border : padding의 바깥쪽 박스
  + margin : 요소의 바깥쪽을 둘러싼 공간
  + width : 한 요소의 너비
  + background-color : 요소의 콘텐츠와 padding의 배경색
  + color : 한 요소의 콘텐츠 색(일반적으로 글자색)
  + text-shadow : 한 요소안의 글자에 그림자를 적용
  + display : 요소의 표시형식을 설정
