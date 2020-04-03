# 모든 항목을 필수 응답으로 설정하기

- 자바스크립트를 사용하면 문항 응답이 모두 완료되었는지 체크하는 함수를 만들 수 있다.
```HTML
<html>
<head>
<script type="text/javascript">

function getAnswer(number) {
  var answers = document.getElementsByName("answer" + number);
  var value;

  for(var i = 0; i < answers.length; i++) {
    if(answers[i].checked)
      value = answers[i].value;
  }
  return value;
}

function check() {

  var allChecked = true;
  for(var i = 1; i <= 2; i++) {
     var answer = getAnswer(i);
     if(answer == undefined) {
       allChecked = false;
       break;
     }
  }

  if(!allChecked) {
    alert("다체크해야한다");
  } else {
    alert("OK");
  }
}
</script>
</head>
<body>
<div>
  1.
  <input type="radio" name="answer1" value="1">
  <input type="radio" name="answer1" value="2">
</div>
<div>
  2.
  <input type="radio" name="answer2" value="1">
  <input type="radio" name="answer2" value="2">
</div>
<p>
<button onclick="javascript:check();">눌러봐</button>
</p>
</body>
</html>
```
