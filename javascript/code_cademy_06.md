# before start...
- 오래간만에 자바스크립트를 봤더니 let과 const를 구분하지 못해, 자료를 찾아 복습했다.
https://gist.github.com/LeoHeo/7c2a2a6dbcf80becaaa1e61e90091e5d


# LOOPS

- Repeating Tasks Manually
```JavaScript
const vacationSpots = ['Seoul', 'Venice', 'Berlin'];

console.log(vacationSpots[0]);
console.log(vacationSpots[1]);
console.log(vacationSpots[2]);
```

- The For Loop
```JavaScript
for (let counter = 5; counter < 11; counter++ )
  {
    console.log(counter);
  }
```

- Looping in Reverse
```JavaScript
for (let counter = 3; counter >= 0; counter--){
  console.log(counter);
}
```

- Looping through Arrays
```JavaScript
const vacationSpots = ['Bali', 'Paris', 'Tulum'];

// Write your code below
for (let i = 0; i < vacationSpots.length; i++){
  console.log("I would love to visit " + vacationSpots[i]);
}
```

- Nested Loops
```JavaScript
let bobsFollowers = ['Joe', 'Marta', 'Sam', 'Erin'];
let tinasFollowers = ['Sam', 'Marta', 'Elle'];
let mutualFollowers = [];

for (let i = 0; i < bobsFollowers.length; i++) {
  for (let j = 0; j < tinasFollowers.length; j++) {
    if (bobsFollowers[i] === tinasFollowers[j]) {
      mutualFollowers.push(bobsFollowers[i]);
    }
  }
};
```

- The While Loop
```JavaScript
const cards = ['diamond', 'spade', 'heart', 'club'];

// Write your code below
let currentCard

while (currentCard !== 'spade'){
  currentCard = cards[Math.floor(Math.random() * 4)];
  console.log(currentCard);
}
```

- Do...While Statements
```JavaScript
let cupsOfSugarNeeded = 8
let cupsAdded = 0

do {
  cupsAdded++;
} while (cupsAdded < cupsOfSugarNeeded)
```

- The break Keyword
```JavaScript
const rapperArray = ["Lil' Kim", "Jay-Z", "Notorious B.I.G.", "Tupac"];

// Write your code below
for (let i = 0; i < rapperArray.length; i++) {
  console.log(rapperArray[i])
  if(rapperArray[i] === "Notorious B.I.G.") {
    break;
  }
}

console.log("And if you don't know, now you know.")
```
