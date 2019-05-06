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

# 클로저
https://www.opentutorials.org/course/743/6544
클로저(closure)는 내부함수가 외부함수의 맥락(context)에 접근할 수 있는 것을 가르킨다.

1. 내부함수
자바스크립트는 함수 안에서 또 다른 함수를 선언할 수 있다.
```javascript
function outter(){
    function inner(){
        var title = 'coding everybody';
        alert(title);
    }
    inner();
}
outter();
```
내부함수는 외부함수의 지역변수에 접근할 수 있다.
```javascript
function outter(){
    var title = 'coding everybody';  
    function inner(){        
        alert(title);
    }
    inner();
}
outter();
```


2. 클로저
내부함수는 외부함수의 지역변수에 접근 할 수 있는데 외부함수의 실행이 끝나서 외부함수가 소멸된 이후에도 내부함수가 외부함수의 변수에 접근 할 수 있다. 이러한 메커니즘을 클로저라고 한다.
```javascript
function outter(){
    var title = 'coding everybody';  
    return function(){        
        alert(title);
    }
}
inner = outter();
inner();
```

3. 클로저 응용
```javascript
var arr = []
for(var i = 0; i < 5; i++){
    arr[i] = function(){
        return i;
    }
}
for(var index in arr) {
    console.log(arr[index]());
}
// 위의 코드는 아래와 같이 변경해야 한다.
var arr = []
for(var i = 0; i < 5; i++){
    arr[i] = function(id) {
        return function(){
            return id;
        }
    }(i);
}
for(var index in arr) {
    console.log(arr[index]());
}
```
- 클로저로 인해서 i가 5가 되기 때문에 function 안에 function을 만들어주고 거기에 id라는 인자를 만들어서 쓰면 원하는 결과를 출력할 수 있다.


# arguments
https://www.opentutorials.org/course/743/6548

1. arguments
함수에는 arguments라는 변수에 담긴 숨겨진 유사 배열이 있다. 이 배열에는 함수를 호출할 때 입력한 인자가 담겨있다.

```javascript
function sum(){
    var i, _sum = 0;    
    for(i = 0; i < arguments.length; i++){
        document.write(i+' : '+arguments[i]+'<br />');
        _sum += arguments[i];
    }   
    return _sum;
}
document.write('result : ' + sum(1,2,3,4));
```
- 인자에 대해 정의를 제대로 안했지만 실제 sum 함수에 4개의 숫자를 인자로 넘겼다. 이런 것을 가능하게 하는 것이 바로 arguments 이다.
- arguments는 함수안에서 사용할 수 있도록 그 이름이나 특성이 약속되어 있는 일종의 배열이다. arguments[0]은 함수로 전달된 첫번째 인자를 알아낼 수 있다. 또 arguments.length를 이용해서 함수로 전달된 인자의 개수를 알아낼 수도 있다. 이러한 특성에 반복문을 결합하면 함수로 전달된 인자의 값을 순차적으로 가져올 수 있다.


2. 매개변수의 수
- arguments.length : 함수로 전달된 실제 인자의 수
- 함수.length : 함수에 정의된 인자의 수
```javascript
function zero(){
    console.log(
        'zero.length', zero.length,
        'arguments', arguments.length
    );
}
function one(arg1){
    console.log(
        'one.length', one.length,
        'arguments', arguments.length
    );
}
function two(arg1, arg2){
    console.log(
        'two.length', two.length,
        'arguments', arguments.length
    );
}
zero(); // zero.length 0 arguments 0
one('val1', 'val2');  // one.length 1 arguments 2
two('val1');  // two.length 2 arguments 1
```
