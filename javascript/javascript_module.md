# 자바스크립트 모듈화
https://www.opentutorials.org/course/743/4750

1. 모듈이란

자바스크립트에서는 모듈 개념이 분명하게 존재하지는 않는다. 하지만 구동되는 호스트 환경에 따라 서로 다른 모듈화 방법이 제공되고 있다.

- 모듈이 없다면
```HTML
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
</head>
<body>
    <script>
        function welcome(){
            return 'Hello world'
        }
        alert(welcome());
    </script>
</body>
</html>
```

- 위의 파일에서 welcome 함수가 자주 사용하는 것이라고 가정하자. 필요할 때마다 함수를 정의하면 낭비가 된다. 이럴 때 함수 welcome을 모듈로 만들 수 있다.
```javascript
// 새로운 파일을 만든다. 이름은 greeting.js 다.
function welcome(){
    return 'Hello world';
}
```
```html
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <script src="greeting.js"></script>
</head>
<body>
    <script>
        alert(welcome());
    </script>
</body>
</html>
```

2. Node.js에서의 모듈의 로드
```javascript
var PI = Math.PI;

exports.area = function (r) {
return PI * r * r;
};

exports.circumference = function (r) {
return 2 * PI * r;
};


var circle = require('./node.circle.js');
console.log( 'The area of a circle of radius 4 is '
           + circle.area(4));
```

3. 라이브러리
라이브러리는 모듈과 비슷한 개념이다. 모듈이 프로그램을 구성하는 작은 부품으로서의 로직을 의미한다면 라이브러리는 자주 사용되는 로직을 재사용하기 편리하도록 잘 정리한 일련의 코드들의 집합을 의미한다고 할 수 있다.

아래 예제는 유명 라이브러리인 jQuery를 사용하는 방법이다.
(요즘은 리액트 등 새로운 것이 많이 나와서 jQuery는 잘 사용하지 않는다고 함)
```HTML
<html>
<head>
    <script src="https://code.jquery.com/jquery-1.11.0.min.js"></script>
</head>
<body>
    <ul id="list">
        <li>empty</li>
        <li>empty</li>
        <li>empty</li>
        <li>empty</li>
    </ul>
    <input id="execute_btn" type="button" value="execute" />
    <script type="text/javascript">
     $('#execute_btn').click(function(){
        $('#list li').text('coding everybody');
     })
    </script>
</body>
</html>
```
- jQuery를 사용하지 않으면 훨씬 복잡한 방법으로 반복문을 돌려서 해당 태그를 찾는 코드를 짜야 한다. 
