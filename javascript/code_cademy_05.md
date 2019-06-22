# ARRAYS

- Accessing Elements
```JavaScript
const hello = 'Hello World';
console.log(hello[6]);
// Output: W
```

- Update Elements
```JavaScript
let seasons = ['Winter', 'Spring', 'Summer', 'Fall'];

seasons[3] = 'Autumn';
console.log(seasons);
//Output: ['Winter', 'Spring', 'Summer', 'Autumn']
```

- Arrays with let and const
```JavaScript
let condiments = ['Ketchup', 'Mustard', 'Soy Sauce', 'Sriracha'];

const utensils = ['Fork', 'Knife', 'Chopsticks', 'Spork'];

condiments[0] = 'Mayo';

console.log(condiments);

condiments = ['Mayo'];

utensils[3] = 'Spoon';

console.log(utensils);
```

- The .length property
```JavaScript
const newYearsResolutions = ['Keep a journal', 'Take a falconry class'];

console.log(newYearsResolutions.length);
// Output: 2
```
