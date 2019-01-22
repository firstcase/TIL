# FUNCTIONS


```Python
def spam ():
  """Prints 'Eggs!' to the console."""
  print "Eggs!"
```

Parameters and Arguments
```python
def power(base, exponent):
  result = base ** exponent
  print "%d to the power of %d is %d." % (base, exponent, result)

power(37, 4)  
```

직접 짜보는 연습하기
```Python
def cube(n):
  return n * n * n

def by_three(n):
  if n % 3 == 0:
  	return cube(n)
  else:
    return False
```

Generic Imports
```python
import math
print math.sqrt(25)
```
```python
from math import sqrt
from math import *
```

```python
maximum = max(1,2,3,4,5)
print maximum

minimum = min(-1,1,2,3,4,5)
print minimum

absolute = abs(-42)
print absolute

def distance_from_zero(n):
  if type(n) == int or type(n) == float:
    return abs(n)
  else:
    return "Nope"
```

FUNCTIONS 실습해보기
```python
def hotel_cost(nights):
  return 140 * nights

def plane_ride_cost(city):
  if city == "Charlotte":
    return 183
  elif city == "Tampa":
    return 220
  elif city == "Pittsburgh":
    return 222
  elif city == "Los Angeles":
    return 475

def rental_car_cost(days):
  cost = days * 40
  if days >= 7 :
    cost -= 50
  elif 7 >= days >= 3:
    cost -= 20
  return cost

def trip_cost(city, days, spending_money):
  return rental_car_cost(days) + hotel_cost(days - 1) + plane_ride_cost(city) + spending_money

print trip_cost("Los Angeles", 5, 600)
```
