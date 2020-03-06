# radio button 만들기

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
