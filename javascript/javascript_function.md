# 유효범위
https://www.opentutorials.org/course/743/6495


1. 유효범위에 대해서

유효범위(Scope)는 변수의 수명을 의미한다.
```javascript
var vscope = 'global';
function fscope(){
    alert(vscope);
}
fscope();
```
- 함수 밖에서 변수를 선언하면 그 변수는 전역변수가 된다. 전역변수는 에플리케이션 전역에서 접근이 가능한 변수다.

```javascript
var vscope = 'global';
function fscope(){
    var vscope = 'local';
    alert('함수안 '+vscope);
}
fscope();
alert('함수밖 '+vscope);
```
- 지역변수의 유효범위는 함수 안이고, 전역변수의 유효범위는 에플리케이션 전역인데, 같은 이름의 지역변수와 전역변수가 동시에 정의되어 있다면 지역변수가 우선한다는 것을 알 수 있다.

```javascript
var vscope = 'global';
function fscope(){
    vscope = 'local';
    alert('함수안'+vscope);
}
fscope();
alert('함수밖'+vscope);
```
- 결과는 모두 local이다.
- 함수 fscope의 지역변수를 선언할 때 var를 사용하지 않았기 때문이다. var를 사용하지 않은 지역변수는 전역변수가 된다.
- 변수를 선언할 때는 꼭 var을 붙이는 것을 습관화해야 한다. 되도록 전역변수를 쓰지 않는 것이 좋다.


2. 유효범위의 효용

- 지역변수의 사용
```javascript
function a (){
    var i = 0;
}
for(var i = 0; i < 5; i++){
    a();
    document.write(i);
}

// 01234
```

- 전역변수의 사용 : 아래 예제는 무한 반복을 발생시킨다.
```javascript
function a (){
    i = 0;
}
for(i = 0; i < 5; i++){
    a();
    document.write(i);
}
```

3. 전역변수의 사용
불가피하게 전역변수를 사용해야 하는 경우는 하나의 객체를 전역변수로 만들고 객체의 속성으로 변수를 관리하는 방법을 사용한다.

```javascript
MYAPP = {}
MYAPP.calculator = {
    'left' : null,
    'right' : null
}
MYAPP.coordinate = {
    'left' : null,
    'right' : null
}

MYAPP.calculator.left = 10;
MYAPP.calculator.right = 20;
function sum(){
    return MYAPP.calculator.left + MYAPP.calculator.right;
}
document.write(sum());
```

4. 유효범위의 대상(함수)
- 자바스크립트는 함수에 대한 유효범위만을 제공한다. 많은 언어들이 블록(대체로 {,})에 대한 유효범위를 제공하는 것과 다른 점이다.
```javascript
for(var i = 0; i < 1; i++){
    var name = 'coding everybody';
}
alert(name);
//coding everybody
```

5. 정적 유효범위
- 자바스크립트는 함수가 선언된 시점에서의 유효범위를 갖는다. 이러한 유효범위의 방식을 정적 유효범위(static scoping), 혹은 렉시컬(lexical scoping)이라고 한다.
```javascript
var i = 5;

function a(){
    var i = 10;
    b();
}

function b(){
    document.write(i);
}

a();

//5
```
