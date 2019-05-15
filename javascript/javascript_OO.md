# 객체 지향 - 생성자와 new
https://www.opentutorials.org/course/743/6570

1. 객체
- 서로 연관된 변수와 함수를 그룹핑한 그릇이
- 객체 내의 변수를 프로퍼티(property), 함수를 메소드(method)라고 부른다.

```javascript
var person = {}
person.name = 'egoing';
person.introduce = function(){
    return 'My name is '+this.name;
}
document.write(person.introduce());

//아래와 같이 쓰면 좀더 가독성이 좋아진다.
var person = {
    'name' : 'egoing',
    'introduce' : function(){
        return 'My name is '+this.name;
    }
}
document.write(person.introduce());
```

2. 생성자
```javascript
function Person(){}
var p = new Person();
p.name = 'egoing';
p.introduce = function(){
    return 'My name is '+this.name;
}
document.write(p.introduce());
```
- 함수를 호출할 때 new을 붙이면 새로운 객체를 만든 후에 이를 리턴한다.
- 여러사람을 위해 여러개의 객체를 만든다면 아래와 같이 짜면 된다.
```javascript
function Person(name){
    this.name = name;
    this.introduce = function(){
        return 'My name is '+this.name;
    }   
}
var p1 = new Person('egoing');
document.write(p1.introduce()+"<br />");

var p2 = new Person('leezche');
document.write(p2.introduce());
```
- 생성자 내에서 이 객체의 프로퍼티를 정의하고 있다. 이 작업을 초기화라고 한다. 중복이 덜 발생하도록 하면서 코드를 재사용할 수 있다.
- 생성자 함수는 일반함수와 구분하기 위해서 첫글자를 대문자로 표시한다.


# 전역객체
https://www.opentutorials.org/course/743/6577

1. 전역객체란?
전역객체(Global object)는 특수한 객체다. 모든 객체는 이 전역객체의 프로퍼티다.
```javascript
function func(){
    alert('Hello?');    
}
func();
window.func();
```
- window를 붙이든 안붙이든 똑같은 결과가 출력된다. 모든 전역변수와 함수는 사실 window 객체의 프로퍼티다

```javascript
var o = {'func':function(){
    alert('Hello?');
}}
o.func();
window.o.func();
```
- 자바스크립트에서 모든 객체는 기본적으로 전역객체의 프로퍼티이다.

2. 전역객체 API
- ECMAScript에서는 전역객체의 API를 정의해두었다. 그외의 API는 호스트환경에 따라서 추가 정의하기 때문에 서로 다르다.
- 예를 들어 웹브라우저 자바스크립트에서는 alert()라는 전역객체의 메소드가 존재하지만 node.js에는 없다.
- 전역객체의 이름도 호스트환경에 따라서 다른데, 웹브라우저에서 전역객체는 window이지만 node.js에서는 global이다.


# this
https://www.opentutorials.org/course/743/6571

- this는 함수 내에서 함수 호출 맥락(context)를 의미한다. 맥락이라는 것은 상황에 따라서 달라진다는 의미인데, 함수를 어떻게 호출하느냐에 따라서 this가 가리키는 대상이 달라진다.

1. 함수 호출
```javascript
function func(){
    if(window === this){
        document.write("window === this");
    }
}
func();
```
- this는 전역객체인 window와 같다.

2. 메소드의 호출
```javascript
var o = {
    func : function(){
        if(o === this){
            document.write("o === this");
        }
    }
}
o.func();   
```
- 객체의 소속인 메소드의 this는 그 객체를 가르킨다.

3. 생성자의 호출
```javascript
var funcThis = null;

function Func(){
    funcThis = this;
}
var o1 = Func();
if(funcThis === window){
    document.write('window <br />');
}

var o2 = new Func();
if(funcThis === o2){
    document.write('o2 <br />');
}
```
- 생성자는 빈 객체를 만드는데, 객체 내에서 this는 만들어진 객체를 가르킨다. 생성자가 실행되기 전까지는 객체가 변수에 할당되지 않기 때문에 this가 아니면 객체에 대한 작업을 할 수 없다.

- 아래 코드의 결과는 'undefined'가 출력된다.
```javascript
function Func(){
    document.write(o);
}
var o = new Func();
```

4. apply, call
```javascript
var o = {}
var p = {}
function func(){
    switch(this){
        case o:
            document.write('o<br />');
            break;
        case p:
            document.write('p<br />');
            break;
        case window:
            document.write('window<br />');
            break;          
    }
}
func();
func.apply(o);
func.apply(p);
```
- 함수를 어떤 방식으로 호출하느냐에 따라서 전혀 다른 객체에 종속시킬 수 있다.
- 즉 함수가 누구의 소속인가에 따라서 this의 값은 그 소속인 객체를 가르킨다.
