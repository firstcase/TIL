# radio button 만들

1. 라디오 버튼(Radio button) 사용방법
```HTML
<input type="radio" name="fruit" value="사과" /> 사과
<input type="radio" name="fruit" value="바나나" checked="checked" /> 바나나
```

2. 중복 선택이 안되게 하는 방법
- name 속성을 같게 해주면 된다.

3. 기본 노출에 체크한 버튼을 띄우려면
- checked 속성을 활용한다.
```HTML
<input type="radio" name="chk_info" value="HTML">HTML
<input type="radio" name="chk_info" value="CSS" checked="checked">CSS
<input type="radio" name="chk_info" value="웹디자인">웹디자인
```

4. 버튼 값 가져오기
https://www.geeksforgeeks.org/how-to-get-value-of-selected-radio-button-using-javascript/
```HTML
<html>

<head>
    <title>
        Get value of selected
        radio button
    </title>
</head>

<body>
    <p>
        Select a radio button and click on Submit.
    </p>

    Gender:
    <input type="radio" name="gender" value="Male">Male
    <input type="radio" name="gender" value="Female">Female
    <input type="radio" name="gender" value="Others">Others

    <br>

    <button type="button" onclick="displayRadioValue()">
        Submit
    </button>

    <br>

    <div id="result"></div>

    <script>
        function displayRadioValue() {
            var ele = document.getElementsByName('gender');

            for(i = 0; i < ele.length; i++) {
                if(ele[i].checked)
                document.getElementById("result").innerHTML
                        = "Gender: "+ele[i].value;
            }
        }
    </script>
</body>
</html>          
```


5. 선택된 값이 있는지 확인하기
```JavaScript
var chk_radio = document.getElementsByName('service_type');
		var sel_type = null;
		for(var i=0;i<chk_radio.length;i++){
			if(chk_radio[i].checked == true){
				sel_type = chk_radio[i].value;
			}
		}

		if(sel_type == null){
      alert("서비스유형을 선택하세요.");
			   return false;
		}
```
