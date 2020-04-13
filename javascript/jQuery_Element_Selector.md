# Element Selector (“element”)

- 엘리먼트 셀렉터를 사용하면 css 속성도 하이잭헤서 바꿔줄 수 있다.
- 아래와 같은 코드를 사용하면 'div' 태그로 싸진 박스만 보더를 줄 수 있게 된다.

```html
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>element demo</title>
  <style>
  div, span {
    width: 60px;
    height: 60px;
    float: left;
    padding: 10px;
    margin: 10px;
    background-color: #eee;
  }
  </style>
  <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
</head>
<body>

<div>DIV1</div>
<div>DIV2</div>
<span>SPAN</span>

<script>
$( "div" ).css( "border", "9px solid red" );
</script>

</body>
</html>
```
