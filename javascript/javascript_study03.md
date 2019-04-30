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

# 배열
https://www.opentutorials.org/course/743/4736

- 배열의 생성
```javascript
var member = ['egoing', 'k8805', 'sorialgi']

alert(member[0]);
alert(member[1]);
alert(member[2]);
```

- 배열과 반복문의 결합
```javascript
function get_members(){
    return ['egoing', 'k8805', 'sorialgi'];
}
members = get_members();
// members.length는 배열에 담긴 값의 숫자를 알려준다.
for(i = 0; i < members.length; i++){
    // members[i].toUpperCase()는 members[i]에 담긴 문자를 대문자로 변환해준다.
    document.write(members[i].toUpperCase());   
    document.write('<br />');
```

- 배열에 원소 추가하기  
```javascript
var li = ['a', 'b', 'c', 'd', 'e'];
// 뒤에 추가할 때는 push
li.push('f');

// 복수의 인자를 추가할 때는 concat
li = li.concat(['f', 'g']);

// 맨 앞의 인자를 추가할 때는 unshift
li.unshift('z');

// splice 로 배열의 두번째에 'B'를 추가할 수 있다
li.splice(2, 0, 'B');
```

- 원소 제거 & 정렬
```javascript
var li = ['a', 'b', 'c', 'd', 'e'];
// 첫번째 원소를 제거할 때 shift를 쓴다
li.shift();

// 끝 점의 원소를 제거할 때는 pop
li.pop();

// 정렬
li.sort();

// 역순 정렬
li.reverse();
```


# 객체(Object)
https://www.opentutorials.org/course/743/6491

- 객체의 생성
```javascript
var grades = {'egoing': 10, 'k8805': 6, 'sorialgi': 80};

var grades = {};
grades['egoing'] = 10;
grades['k8805'] = 6;
grades['sorialgi'] = 80;

var grades = new Object();
grades['egoing'] = 10;
grades['k8805'] = 6;
grades['sorialgi'] = 80;

var grades = {'egoing': 10, 'k8805': 6, 'sorialgi': 80};
alert(grades['sorialgi']);

alert(grades.sorialgi);
// 클래스처럼 값을 불러올 수 있는 것이 자바스크립트의 특징이다
```

- 객체와 반복문 함께 사용하기
```javascript
var grades = {'egoing': 10, 'k8805': 6, 'sorialgi': 80};
for(key in grades) {
    document.write("key : "+key+" value : "+grades[key]+"<br />");
}
// for 문은 in 뒤에 따라오는 배열의 key 값을 in 앞의 변수 name에 담아서 반복문을 실행한다. 반복문이 실행될 때 변수 key의 값으로 egoing, k8805, sorialgi가 순차적으로 할당되기 때문에 grades[key]를 통해서 객체의 값을 알아낼 수 있다.
```

- 객체 지향 : 클래스를 선언하지 않고 함수를 할당해서 쓸 수 있다.(신기)
```javascript
var grades = {
    'list': {'egoing': 10, 'k8805': 6, 'sorialgi': 80},
    'show' : function(){
        for(var name in this.list){
            document.write(name+':'+this.list[name]+"<br />");
        }
    }
};
grades.show();
```

# 정규표현식 (regular expression)
https://www.opentutorials.org/course/743/6580


1. 정규표현식 생성
정규표현식은 두가지 단계로 이루어진다. 하나는 컴파일(compile) 다른 하나는 실행(execution)이다.
```javascript
var pattern = /a/

var pattern = new RegExp('a');
```

2. 정규 표현식 메소드 실행
```javascript
console.log(pattern.exec('abcdef')); // ["a"]

console.log(pattern.exec('bcdefg')); // null


console.log(pattern.test('abcdef')); // true
cnosole.log(pattern.test('bcdefg')); // false
```

3. 문자열 메소드 실행
```javascript
console.log('abcdef'.match(pattern)); // ["a"]
console.log('bcdefg'.match(pattern)); // null

console.log('abcdef'.replace(pattern, 'A'));  // Abcdef
```

4. 옵션  
정규표현식 패턴을 만들 때 옵션을 설정할 수 있다.
```javascript
var xi = /a/;
console.log("Abcde".match(xi)); // null
var oi = /a/i;
console.log("Abcde".match(oi)); // ["A"];
// 'i'를 붙이면 대소문자를 구분하지 않는다

var xg = /a/;
console.log("abcdea".match(xg));
var og = /a/g;
console.log("abcdea".match(og));
//'g'를 붙이면 검색된 모든 결과를 리턴한다
```
