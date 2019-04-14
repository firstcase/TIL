# 첫 번째 장고 앱 작성하기, part 6

앱의 모양과 느낌을 바꾸는 방법을 공부했다.

1. 폰트 컬러 바꾸기
- polls/static 폴더를 만들고 하위에 또 polls 폴더를 만든다.
- 그 안에 style.css 파일을 만들어서 html 태그의 틀을 편집할 수 있다.
- 그 다음 polls/templates/polls/index.html 파일의 내용을 수정해 준다.
```html
{% load static %}

<link rel="stylesheet" type="text/css" href="{% static 'polls/style.css' %}">
```

2. 배경이미지 추가하기
- polls/static/polls/ 디렉토리에 images 서브 디렉토리를 만든다.
- 이미지를 background.gif로 저장한뒤 polls/static/polls/images 폴더에 드래그해서 저장한다.
- polls/static/polls/style.css 파일에 아래 코드를 추가한다.
```html
body {
    background: white url("images/background.gif") no-repeat;
}
```
