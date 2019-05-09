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
