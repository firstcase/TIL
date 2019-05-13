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
