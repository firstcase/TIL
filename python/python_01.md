## 연산

```python
product = 3 * 8
remainder = 1398 % 11
```

## 타입

```python
int1 = 1
int2 = 10
int3 = -5

float1 = 1.0
float2 = 10.
float3 = -5.5

# this evaluates to 150:
float4 = 1.5e2
```

## 연산과 타입

```python
quotient = 6/2
# the value of quotient is now 3, which makes sense

quotient = 7/2
# the value of quotient is 3, even though the result of the division here is 3.5

quotient1 = 7./2
# the value of quotient1 is 3.5
quotient2 = 7/2.
# the value of quotient2 is 3.5
quotient3 = 7./2.
# the value of quotient3 is 3.5

quotient1 = float(7)/2
# the value of quotient1 is 3.5
```


## String 줄바꿈

```python
address_string = """136 Whowho Rd
Apt 7
Whosville, WZ 44494"""
```


## 1강 복습
```python
skill_completed = "Python Syntax"
exercises_completed = 13

#The amount of points for each exercise may change, because points don't exist yet
points_per_exercise = 5
point_total = 100
point_total += exercises_completed * points_per_exercise

print("I got "+ str(point_total) + " points!")
```
