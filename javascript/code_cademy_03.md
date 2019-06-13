# FUNCTIONS

- Function Declarations
```JavaScript
function greetWorld() {
  console.log('Hello, World!');
}
```

- Calling a Function
```JavaScript
function sayThanks(){
  console.log('Thank you for your purchase! We appreciate your business.')
};

sayThanks();
```

- Parameters and Arguments
```JavaScript
function sayThanks(name) {
  console.log('Thank you for your purchase ' + name + '! We appreciate your business.');
}

sayThanks('Cole')
```

- Default Parameters
```JavaScript
function greeting (name = 'stranger') {
  console.log(`Hello, ${name}!`)
}

greeting('Nick') // Output: Hello, Nick!
greeting() // Output: Hello, stranger!
```

- Return
```JavaScript
function rectangleArea(width, height) {
  let area = width * height
}
console.log(rectangleArea(5, 7)) // Prints undefined

function rectangleArea(width, height) {
  if (width < 0 || height < 0) {
    return 'You need positive integers to calculate area!';
  }
  return width * height;
}
```

- Helper Functions
```JavaScript
function multiplyByNineFifths(number) {
  return number * (9/5);
};

function getFahrenheit(celsius) {
  return multiplyByNineFifths(celsius) + 32;
};

getFahrenheit(15); // Returns 59
```

- Function Expressions
```JavaScript
const plantNeedsWater = function(day){
  if(day === 'Wednesday'){
    return true
  } else {
    return false
  }
}

console.log(plantNeedsWater('Tuesday'))
```

- Arrow Functions
```JavaScript
const rectangleArea = (width, height) => {
  let area = width * height;
  return area;
};
```

- Concise Body Arrow Functions
```JavaScript
const squareNum = (num) => {
  return num * num;
};

//refactoring

const squareNum = num => num * num;
```
