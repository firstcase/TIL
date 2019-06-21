# SCOPE

- Blocks and Scope
```JavaScript
const logSkyColor = () => {
  let color = 'blue';
  console.log(color); // blue
};
```

- Global Scope
```JavaScript
const color = 'blue'

const returnSkyColor = () => {
  return color; // blue
};

console.log(returnSkyColor()); // blue
```

- Block Scope
```JavaScript
const logSkyColor = () => {
  let color = 'blue';
  console.log(color); // blue
};

logSkyColor(); // blue
console.log(color); // ReferenceError
```

- Scope Pollution
```JavaScript
let num = 50;

const logNum = () => {
  num = 100; // Take note of this line of code
  console.log(num);
};

logNum(); // Prints 100
console.log(num); // Prints 100
```
