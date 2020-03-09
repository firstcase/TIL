# 테이블 사용법

1. 테이블의 구성요소
- <table> : 테이블을 만드는 태그
- <th> : 테이블의 헤더부분을 만드는 태그
- <tr> : 테이블의 행을 만드는 태그
- <td> : 테이블의 열을 만드는 태그

```HTML
<html>
<head>
<meta charset="EUC-KR">
<title>초간단 테이블</title>
</head>
<body>
    <table border="1">
	<th>테이블</th>
	<th>만들기</th>
	<tr><!-- 첫번째 줄 시작 -->
	    <td>첫번째 칸</td>
	    <td>두번째 칸</td>
	</tr><!-- 첫번째 줄 끝 -->
	<tr><!-- 두번째 줄 시작 -->
	    <td>첫번째 칸</td>
	    <td>두번째 칸</td>
	</tr><!-- 두번째 줄 끝 -->
    </table>
</body>
</html>
```

2. 테이블 디자인 변경
- border : 테이블의 테두리, 숫자가 높을 수록 테두리가 두꺼워짐
- bordercolor : 테이블의 테두리 색상, 디폴트는 블랙
- width : 테이블의 가로크기, 픽셀 단위로 크기나 비율을 줄 수 있음
- height : 테이블의 세로크기
- align : 정렬
- bgcolor : 배경색
- colspan : 가로 합병(열 합병)
- rowspan : 세로 합병(행 합병)
```HTML
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<table border="1" bordercolor="blue" width ="500" height="300" align = "center" >
    <tr bgcolor="blue" align ="center">
	<p><td colspan = "3" span style="color:white">오늘의 수입/지출</td></p>
    </tr>
    <tr align = "center" bgcolor="skybule">
	<td>내용</td>
	<td>수입</td>
	<td>지출</td>
    </tr>
    <tr>
	<td>월급!</td>
	<td>1,000,000</td>
	<td></td>
    </tr>
    <tr>
	<td>점심값</td>
	<td></td>
	<td>5,000</td>
    </tr>
    <tr>
	<td>부모님선물</td>
	<td></td>
	<td>30,000</td>
    </tr>
    <tr>
	<td rowspan="3" align = "center" bgcolor="skyblue">총계</td>
	<td>수입</td>
	<td>지출</td>
    </tr>
    <tr>
	<td>1,000,000</td>
	<td>35,000</td>
    </tr>
    <tr>
	<td>남은돈</td>
	<td>965,000</td>
    </tr>
</table>
</body>
</html>
```
