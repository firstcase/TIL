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

# 반복문

- while : while문은 while문 뒤에 따라오는 괄호 안의 조건이 참(true)면 중괄호 안의 코드 구간을 반복적으로 실행한다.
```javascript
while (조건){
    반복해서 실행할 코드
}

var i = 0;
// 종료조건으로 i의 값이 10보다 작다면 true, 같거나 크다면 false가 된다.
while(i < 10){
    // 반복이 실행될 때마다 coding everybody <br />이 출력된다. <br /> 줄바꿈을 의미하는 HTML 태그
    document.write('coding everybody <br />');
    // i의 값이 1씩 증가한다.
    i++
}
```

- for : for문은 제일 먼저 '초기화'를 한다.
```javascript
for(초기화; 반복조건; 반복이 될 때마다 실행되는 코드){
    반복해서 실행될 코드
}

for(var i = 0; i < 10; i++){
    document.write('coding everybody'+i+'<br />');
}
```

- break : 반복작업을 중간에 중단시키고 싶다면 break를 사용하면 된다.
```javascript
for(var i = 0; i < 10; i++){
    if(i === 5) {
        break;
    }
    document.write('coding everybody'+i+'<br />');
}
```

- continue : 실행은 즉시 중단되면서 반복은 계속하게 할 때 사용한다.
```javascript
for(var i = 0; i < 10; i++){
    if(i === 5) {
        continue;
    }
    document.write('coding everybody'+i+'<br />');
}
```

# 함수
https://www.opentutorials.org/course/743/4729

- function 뒤에 함수의 이름이 오고, 소괄호가 따라온다. 소괄호에 인자를 써주는데, 인자는 생략 할 수 있다. 함수를 호출 했을 때 실행하게 될 부분이 중괄호 안쪽에 온다.
```javascript
function numbering(){
    i = 0;
    while(i < 10){
        document.write(i);
        i += 1;
    }   
}
numbering();
```

- return : return 뒤에 따라오는 값을 함수의 결과로 반환하고 함수를 종료시킨다.
```javascript
function get_member1(){
    return 'egoing';
}

function get_member(){
    return 'egoing';
    return 'k8805';
    return 'sorialgi';
}
alert(get_member());
// 결과는 'egoing'이다. 그 뒤는 실행되지 않는다.
```

- 인자 : 인자(argument)는 함수로 유입되는 입력 값
```javascript
function get_arguments(arg1, arg2){
    return arg1 + arg2
}

alert(get_arguments(10, 20));
alert(get_arguments(20, 30));
// 복수의 인자를 받고 싶으면 ','로 연결하면 된다.
```

- 변수에 함수를 할당할 수 있다.
```javascript
var numbering = function (){
    i = 0;
    while(i < 10){
        document.write(i);
        i += 1;
    }   
}
numbering();
```
