# CONDITIONALS & CONTROL FLOW


- comparators
```python
>>> 2 == 2
True
>>> 2 == 5
False

>>> 2 != 5
True
>>> 2 != 2
False

>>> 2 < 5
True
>>> 5 < 2
False

>>> 2 <= 2
True
>>> 5 <= 2
False

>>> 5 > 2
True
>>> 2 > 5
False

>>> 5 >= 5
True
>>> 2 >= 5
False
```


- Conditional Statement Syntax

```python
if 8 < 9:
  print "Eight is less than nine!"


if 8 > 9:
  print "I don't printed!"
else:
  print "I get printed!"


if 8 > 9:
  print "I don't get printed!"
elif 8 < 9:
  print "I get printed!"
else:
  print "I also don't get printed!"
```

조건문 문제풀이
```python
def grade_converter(grade):
    if grade >= 90 :
        return "A"
    elif 89 >= grade >= 80 :
        return "B"
    elif 79 >= grade >= 70 :
        return "C"
    elif 69 >= grade >= 65:
        return "D"
    else:
        return "F"

# This should print an "A"      
print grade_converter(92)

# This should print a "C"
print grade_converter(70)

# This should print an "F"
print grade_converter(61)
```
