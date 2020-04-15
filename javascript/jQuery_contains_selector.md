# :contains() Selector
https://api.jquery.com/contains-selector/

- 특정한 텍스트를 포함한 엘리먼트를 선택할 수 있다.
- 이 기능을 활용하면 특정 텍스트 밑에 밑줄을 긋는 등의 처리를 할 수 있다.

```html
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>contains demo</title>
  <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
</head>
<body>

<div>John Resig</div>
<div>George Martin</div>
<div>Malcom John Sinclair</div>
<div>J. Ohn</div>

<script>
$( "div:contains('John')" ).css( "text-decoration", "underline" );
</script>

</body>
</html>
```
