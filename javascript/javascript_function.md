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


# 값으로서의 함수와 콜백
https://www.opentutorials.org/course/743/6508

1. 값으로서의 함수
javascript의 함수가 다른 언어의 함수와 다른 점은 함수가 값이 될 수 있다는 점이다.
```javascript
function cal(func, num){
    return func(num)
}
function increase(num){
    return num+1
}
function decrease(num){
    return num-1
}
alert(cal(increase, 1));
alert(cal(decrease, 1));
```
- 함수는 값이기 때문에 다른 함수의 인자로 전달될 수도 있다.

2. 함수의 용도
- 함수는 함수의 리턴값으로 사용할 수 있다.
- 함수는 배열의 값으로도 사용할 수 있다.
```javascript
function cal(mode){
    var funcs = {
        'plus' : function(left, right){return left + right},
        'minus' : function(left, right){return left - right}
    }
    return funcs[mode];
}
alert(cal('plus')(2,1));
alert(cal('minus')(2,1));   

var process = [
    function(input){ return input + 10;},
    function(input){ return input * input;},
    function(input){ return input / 2;}
];
var input = 1;
for(var i = 0; i < process.length; i++){
    input = process[i](input);
}
alert(input);
```

3. 콜백
- 처리의 위임 : 값으로 사용될 수 있는 특성을 이용하면 함수의 인자로 함수로 전달할 수 있다. 값으로 전달된 함수는 호출될 수 있기 때문에 이를 이용하면 함수의 동작을 완전히 바꿀 수 있다.
```javascript
function sortNumber(a,b){
    // 위의 예제와 비교해서 a와 b의 순서를 바꾸면 정렬순서가 반대가 된다.
    return b-a;
}
var numbers = [20, 10, 9,8,7,6,5,4,3,2,1];
alert(numbers.sort(sortNumber)); // array, [20,10,9,8,7,6,5,4,3,2,1]
```

- 비동기처리
콜백은 비동기처리에서도 유용하게 사용된다. 시간이 오래걸리는 작업이 있을 때 이 작업이 완료된 후에 처리해야 할 일을 콜백으로 지정하면 해당 작업이 끝났을 때 미리 등록한 작업을 실행하도록 할 수 있다.
```HTML
<!DOCTYPE html>
<html>
<head>
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
</head>
<body>
<script type="text/javascript">
    $.get('./datasource.json.js', function(result){
        console.log(result);
    }, 'json');
</script>
</body>
</html>
```
