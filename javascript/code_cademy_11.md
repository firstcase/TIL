# INTERMEDIATE JAVASCRIPT MODULES

- module.exports
```JavaScript
let Airplane = {};
Airplane.myAirplane = "StarJet";

module.exports = Airplane;
```

- require()
```javascript
const Airplane = require('./1-airplane.js');

function displayAirplane() {
  console.log(Airplane.myAirplane);
}

displayAirplane();
```

- module.exports II
```javascript
module.exports = {
  myAirplane: "CloudJet",
  displayAirplane: function() {
    return this.myAirplane;
  }
};
```
```javascript
const Airplane = require('./2-airplane.js');

console.log(Airplane.displayAirplane());
```

- export default
```javascript
let Airplane = {};

Airplane.availableAirplanes = [
{
  name: 'AeroJet',
  fuelCapacity: 800
 },
 {name: 'SkyJet',
  fuelCapacity: 500
 }
];

export default Airplane;
```

- import
```javascript
import Airplane from './airplane';

function displayFuelCapacity() {
  Airplane.availableAirplanes.forEach(function(element){
  console.log('Fuel Capacity of ' + element.name + ': ' + element.fuelCapacity);
  });
}

displayFuelCapacity();
```
