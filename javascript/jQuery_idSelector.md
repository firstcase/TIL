# ID Selector (“#id”)

https://api.jquery.com/id-selector/

- 기존에 document.getElementById 로 썼던 내용을 $로 간단하게 바꿀 수 있다.
```HTML
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>id demo</title>
  <style>
  div {
    width: 90px;
    height: 90px;
    float: left;
    padding: 5px;
    margin: 5px;
    background-color: #eee;
  }
  </style>
  <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
</head>
<body>

<div id="notMe"><p>id="notMe"</p></div>
<div id="myDiv">id="myDiv"</div>

<script>
$( "#myDiv" ).css( "border", "3px solid red" );
</script>

</body>
</html>
```
