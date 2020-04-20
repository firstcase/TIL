# CSS 기초 적용해보기

- style에 있는 값을 바꿔주면 div 태그에 물려서 디자인이 변한다.
```HTML
<html lang="ko">

<head>
	<meta charset="UTF-8">
	<title>CSS Box Model</title>
	<style>
		div {
			background-color: red;
			color: white;
			width: 400px;
			padding: 50px;
			border: 20px solid maroon;
			margin: 50px;
		}
	</style>
</head>

<body>

	<h1>CSS 박스 모델</h1>
	<div>CSS 박스 모델입니다.<br><br>
		Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus lobortis nibh eu finibus posuere. Duis vehicula ipsum quis purus eleifend mollis. Mauris ut tincidunt felis. Donec commodo justo elit. Praesent eget erat leo. Fusce vitae metus molestie, cursus lorem ullamcorper, fringilla erat. Vivamus turpis massa, dictum vitae ligula ut, eleifend iaculis nunc. In hac habitasse platea dictumst. Fusce eleifend tellus vulputate convallis cursus.
	</div>
	<p>패딩(padding)과 마진(margin)값을 변경하며 눈에 보이지 않는 속성의 존재를 느껴보세요!</p>

</body>

</html>
```

- div 태그가 여러개 일 때는 class 값을 주어 서로 다른 스타일을 적용할 수도 있다.
```HTML
<html lang="ko">

<head>
	<meta charset="UTF-8">
	<title>CSS Box Model</title>
	<style>
		div.box1 {
			background-color: red;
			color: white;
			width: 400px;
			padding: 50px;
			border: 20px solid maroon;
			margin: 50px;
		}

                div.box2 {
			background-color: blue;
			color: white;
			width: 400px;
			padding: 50px;
			border: 20px solid maroon;
			margin: 50px;
		}
	</style>
</head>

<body>
	<div class="box1">
        1
	</div>
  <div class="box2">
        2
	</div>
</body>

</html>
```
