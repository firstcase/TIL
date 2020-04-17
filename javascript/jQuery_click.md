# .click()
https://api.jquery.com/click/

- 클릭 이벤트를 처리할 수 있는 함수

```HTML
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>click demo</title>
  <style>
  p {
    color: red;
    margin: 5px;
    cursor: pointer;
  }
  p:hover {
    background: yellow;
  }
  </style>
  <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
</head>
<body>

<p>First Paragraph</p>
<p>Second Paragraph</p>
<p>Yet one more Paragraph</p>

<script>
$( "p" ).click(function() {
  $( this ).slideUp();
});
</script>

</body>
</html>
```

- 셀렉터로 p태그를 불러서 p태그가 클릭되면 이벤트가 발생하도록 되어 있다.
- <div> 같은데도 붙일 수 있다.
```HTML
<div id="target">
  Click here
</div>
<div id="other">
  Trigger the handler
</div>

$( "#target" ).click(function() {
  alert( "Handler for .click() called." );
});
```
