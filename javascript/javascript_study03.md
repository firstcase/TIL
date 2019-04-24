# 조건문
https://www.opentutorials.org/course/743/4724

- 문법
```javascript
if(true){
    alert('result : true');
}

if(true){
    alert(1);
} else {
    alert(2);
}
```

- else if를 사용하면 좀 더 조건문을 풍부하게 할 수 있다.
```javascript
if(false){
    alert(1);
} else if(false){
    alert(2);
} else if(true){
    alert(3);
} else {
    alert(4);
}

// 4가 출력된다

id = prompt('아이디를 입력해주세요.');
if(id=='egoing'){
    password = prompt('비밀번호를 입력해주세요.');
    if(password==='111111'){
        alert('인증 했습니다.');
    } else {
        alert('인증에 실패 했습니다.');
    }
} else {
    alert('인증에 실패 했습니다.');
}
```

# 논리연산자

- && : &&는 좌항과 우항이 모두 참(true)일 때 참이된다.

- || : '||'의 좌우항 중에 하나라도 true라면 true가 되는 논리 연산자다.


# boolean의 대체제

- 기타 false로 간주되는 데이터형
```javascript
if(!''){
    alert('빈 문자열')
}
if(!undefined){
    alert('undefined');
}
var a;
if(!a){
    alert('값이 할당되지 않은 변수');
}
if(!null){
    alert('null');
}
if(!NaN){
    alert('NaN');
}
```
