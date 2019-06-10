01. Introduction

생활코딩만 보고 공부해서는 문법을 익히기가 어려워서 코드카데미 강좌를 듣기 시작했다.

- Console
In JavaScript, the console keyword refers to an object, a collection of data and actions, that we can use in our code.
```JavaScript
console.log(5);
```
괄호안의 내용을 출력할 수 있다.


- Comments
코멘트를 넣는 방법은 두 가지가 있다.
```JavaScript
// Prints 5 to the console
console.log(5);

/*
This is all commented
console.log(10);
None of this is going to run!
console.log(99);
*/
```


- Data type
1. Number: Any number, including numbers with decimals: 4, 8, 1516, 23.42.
2. String: Any grouping of characters on your keyboard (letters, numbers, spaces, symbols, etc.) surrounded by single quotes: ' ... ' or double quotes " ... ". Though we prefer single quotes. Some people like to think of string as a fancy word for text.
3. Boolean: This data type only has two possible values— either true or false (without quotes). It’s helpful to think of booleans as on and off switches or as the answers to a “yes” or “no” question.
4. Null: This data type represents the intentional absence of a value, and is represented by the keyword null (without quotes).
5. Undefined: This data type is denoted by the keyword undefined (without quotes). It also represents the absence of a value though it has a different use than null.
6. Symbol: A newer feature to the language, symbols are unique identifiers, useful in more complex coding. No need to worry about these for now.
7. Object: Collections of related data.


- Arithmetic Operators
Add: +
Subtract: -
Multiply: *
Divide: /
Remainder: %


- String Concatenation
```JavaScript
console.log('Hello'+'World')
console.log('Hello'+' '+'World')
```


- Properties
```JavaScript
console.log('Hello'.length); // Prints 5
```


- Methods
여러가지 스트링 메소드들이 있기 때문에 공부해 놨다가 쓸 수 있다.
https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/prototype
```JavaScript
console.log('hello'.toUpperCase()); // Prints 'HELLO'
console.log('Hey'.startsWith('H')); // Prints true
console.log('    Remove whitespace   '.trim()); //Remove whitespace
```


- Built-in Objects
https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Math
```JavaScript
console.log(Math.floor(Math.random() * 100));
console.log(Math.ceil(43.8));
console.log(Number.isInteger(2017));
```

- Create a Variable: var / let
```JavaScript
var favoriteFood = 'pizza';
var numOfSlices = 8 ;
console.log(favoriteFood) ;
console.log(numOfSlices) ;

let changeMe = true ;
changeMe = false ;
console.log(changeMe) ;
//output: false
```

- Create a Variable: const
```JavaScript
const entree = 'Enchiladas'
console.log(entree) ;
```
- const로 할당하면 값을 변경할 수 없다. 값을 재할당할 거면 let을 쓰고 그렇지 않을 경우 const를 써주면 된다.

- Mathematical Assignment Operators
```JavaScript
let w = 4;
w = w + 1;

console.log(w); // Output: 5

let w = 4;
w += 1;

console.log(w); // Output: 5

let x = 20;
x -= 5; // Can be written as x = x - 5
console.log(x); // Output: 15

let y = 50;
y *= 2; // Can be written as y = y * 2
console.log(y); // Output: 100

let z = 8;
z /= 2; // Can be written as z = z / 2
console.log(z); // Output: 4
```

- The Increment and Decrement Operator
```JavaScript
let a = 10;
a++;
console.log(a); // Output: 11

let b = 20;
b--;
console.log(b); // Output: 19
```

- String Concatenation with Variables
```JavaScript
let myPet = 'armadillo';
console.log('I own a pet ' + myPet + '.');
// Output: 'I own a pet armadillo.'
```

- String Interpolation
```JavaScript
const myPet = 'armadillo';
console.log(`I own a pet ${myPet}.`);
// Output: I own a pet armadillo.
```

- typeof operator
```JavaScript
const unknown1 = 'foo';
console.log(typeof unknown1); // Output: string

const unknown2 = 10;
console.log(typeof unknown2); // Output: number

const unknown3 = true;
console.log(typeof unknown3); // Output: boolean
```
