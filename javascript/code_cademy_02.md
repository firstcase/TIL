02. CONDITIONAL STATEMENTS

- The if keyword
```JavaScript
if (true) {
  console.log('This message will print!');
}
// Prints "This message will print!"
```

- If...Else Statements
```JavaScript
if (false) {
  console.log('The code in this block will not run.');
} else {
  console.log('But the code in this block will!');
}
// Prints "But the code in this block will!"
```

- Comparison Operators
Less than: <  
Greater than: >  
Less than or equal to: <=  
Greater than or equal to: >=  
Is equal to: ===  
Is NOT equal to: !==   

- Logical Operators
the and operator (&&)  
the or operator (||)  
the not operator, otherwise known as the bang operator (!)  
```JavaScript
if (stopLight === 'green' && pedestrians === 0) {
  console.log('Go!');
} else {
  console.log('Stop');
}

if (day === 'Saturday' || day === 'Sunday') {
  console.log('Enjoy the weekend!');
} else {
  console.log('Do some work.');
}


let excited = true;
console.log(!excited); // Prints false

let sleepy = false;
console.log(!sleepy); // Prints true
```

- Truthy and Falsy
which values are falsy— or evaluate to false when checked as a condition? The list of falsy values includes:  

0  
Empty strings like "" or ''  
null which represent when there is no value at all  
undefined which represent when a declared variable lacks a value  
NaN, or Not a Number  
