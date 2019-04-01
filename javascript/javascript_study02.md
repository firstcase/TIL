# 1. 숫자

## 연산
```javascript
Math.pow(3,2);       // 9,   3의 2승
Math.round(10.6);    // 11,  10.6을 반올림
Math.ceil(10.2);     // 11,  10.2를 올림
Math.floor(10.6);    // 10,  10.6을 내림
Math.sqrt(9);        // 3,   3의 제곱근
Math.random();       // 0부터 1.0 사이의 랜덤한 숫자
```
# 2. 문자

## 문자 이스케이프
```javascript
alert('egoing\'s javascript')
```

## 줄바꿈
```javascript
alert("안녕하세요.\n생활코딩의 세계에 오신 것을 환영합니다");
```
## 문자더하기와 길이구하기
```javascript
alert("coding"+" everybody");
```

# 3. 변수의 선언
```javascript
var a = 'coding', b = 'everybody';
alert(a);
alert(b);
```

# 4. 비교

## 대입연산자 / 비교연산자 / 일치연산자
```javascript
a = 1

alert(1==2)             //false
alert(1==1)             //true
alert("one"=="two")     //false
alert("one"=="one")     //true

alert(1=='1');              //true
alert(1==='1');             //false
```

## 신기방기한 == 과 ===
```javascript
alert(null == undefined);       //true
alert(null === undefined);      //false
alert(true == 1);               //true
alert(true === 1);              //false
alert(true == '1');             //true
alert(true === '1');            //false

alert(0 === -0);                //true
alert(NaN === NaN);             //false
```
- ==을 쓰면 안된다는 강렬한 느낌적 느낌을 받을 수 있다.

## 부정
```javascript
alert(1!=2);            //true
alert(1!=1);            //false
alert("one"!="two");    //true
alert("one"!="one");    //false
```
- != 과 !== 을 사용할 수 있다. != 를 쓰면 안될 것 같은 느낌을 또 받을 수 있다.;;
