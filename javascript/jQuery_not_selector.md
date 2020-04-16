# :not() Selector
https://api.jquery.com/not-selector/

- 주어진 셀렉터와 매치되지 않는 모든 엘리먼트를 선택한다.
- :not() 대신에 .not() 메소드를 써줄 수도 있다.

```HTML
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>not demo</title>
  <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
</head>
<body>

<div>
  <input type="checkbox" name="a">
  <span>Mary</span>
</div>
<div>
  <input type="checkbox" name="b">
  <span>lcm</span>
</div>
<div>
  <input type="checkbox" name="c" checked="checked">
  <span>Peter</span>
</div>

<script>
$( "input:not(:checked) + span" ).css( "background-color", "yellow" );
$( "input").attr( "disabled", "disabled" );
</script>

</body>
</html>
```
