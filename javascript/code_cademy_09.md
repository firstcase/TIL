# CLASSES
https://www.codecademy.com/courses/introduction-to-javascript/lessons/classes/exercises/introduction?action=resume_content_item

- Constructor
```javascript
class Surgeon {
  constructor(name, department) {
    this.name = name;
    this.department = department;
  }
}
```

- Instance
```JavaScript
class Surgeon {
  constructor(name, department) {
    this.name = name;
    this.department = department;
  }
}

const surgeonCurry = new Surgeon('Curry', 'Cardiovascular')

const surgeonDurant = new Surgeon('Durant', 'Orthopedics')
```

- Methods
```javascript
class Surgeon {
  constructor(name, department) {
    this._name = name;
    this._department = department;
    this._remainingVacationDays = 20;
  }

  get name() {
    return this._name;
  }

  get department() {
    return this._department;
  }

  get remainingVacationDays() {
    return this._remainingVacationDays;
  }

  takeVacationDays(daysOff) {
    this._remainingVacationDays -= daysOff;
  }
}

const surgeonCurry = new Surgeon('Curry', 'Cardiovascular');
const surgeonDurant = new Surgeon('Durant', 'Orthopedics');

console.log(surgeonCurry.name)
surgeonCurry.takeVacationDays(3)
console.log(surgeonCurry.remainingVacationDays)
```
