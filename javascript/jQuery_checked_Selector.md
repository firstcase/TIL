# checked Selector

https://api.jquery.com/checked-selector/

- 체크박스나 라디오버튼에서 선택된 엘리먼트를 가져올 수 있다.
- 이 기능을 활용하면 응답하지 않은 문항 넘버를 알려주는 기능도 쉽게 짤 수 있을 것으로 보인다.

```HTML
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>checked demo</title>
  <style>
  input, label {
    line-height: 1.5em;
  }
  </style>
  <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
</head>
<body>

<form>
  <div>
    <input type="radio" name="fruit" value="orange" id="orange">
    <label for="orange">orange</label>
  </div>
  <div>
    <input type="radio" name="fruit" value="apple" id="apple">
    <label for="apple">apple</label>
  </div>
  <div>
    <input type="radio" name="fruit" value="banana" id="banana">
    <label for="banana">banana</label>
  </div>
  <div id="log"></div>
</form>

<script>
$( "input" ).on( "click", function() {
  $( "#log" ).html( $( "input:checked" ).val() + " is checked!" );
});
</script>

</body>
</html>
```
