# ADVANCED TOPICS IN PYTHON

1. Building Lists
```PYTHON
evens_to_50 = [i for i in range(51) if i % 2 == 0]
print evens_to_50
```
- if를 바로 연결해서 원하는 배열을 한 번에 생성할 수 있다.

2. List Comprehension Syntax
```python
# 짝수만 제곱해서 뽑아보자
even_squares = [x ** 2 for x in range(1, 12) if x % 2 == 0]

# 4와 3의 공배수를 뽑아보자
cubes_by_four = [x ** 3 for x in range(1, 11) if ((x ** 3) % 4) == 0]
print cubes_by_four

```

3. List Slicing Syntax
```PYTHON
l = [i ** 2 for i in range(1, 11)]
# Should be [1, 4, 9, 16, 25, 36, 49, 64, 81, 100]

print l[2:9:2]
```
- [start:end:stride] 의 순서로 작성한다.

```PYTHON
to_five = ['A', 'B', 'C', 'D', 'E']

print to_five[3:]
# prints ['D', 'E']

print to_five[:2]
# prints ['A', 'B']

print to_five[::2]
# print ['A', 'C', 'E']
```
- start, end, stride 중에 하나만 써도 동작한다.

4. Reversing a List
```PYTHON
letters = ['A', 'B', 'C', 'D', 'E']
print letters[::-1]
```

5. Anonymous Functions
```PYTHON
lambda x: x % 3 == 0

def by_three(x):
  return x % 3 == 0
```
- 위의 두 개는 같은 기능이다. lambda를 사용하면 이름이 없는 함수를 생성해서 쓸 수 있다.
- 이름이 없는 함수는 변수에 함수를 할당하고 그 변수를 함수로 쓸 수 있다. 변수는 값이기 때문에 인자로 넘길 수도 있다. 또 함수를 리턴을 시켜줄 수 있다. 1급 객체(first order class)라고 부른다.

```PYTHON
my_list = range(16)
print filter(lambda x: x % 3 == 0, my_list)
```
- 필터에 장착하면 객체로 받은 함수가 true일 때만 배열에 할당하는 방식으로 쓸 수 있다. for문으로 짤 때보다 훨씬 간단하다.


6. Iterating Over Dictionaries
```PYTHON
movies = {
  "Monty Python and the Holy Grail": "Great",
  "Monty Python's Life of Brian": "Good",
  "Monty Python's Meaning of Life": "Okay"
}

print movies.items()
```

# INTRODUCTION TO BITWISE OPERATORS

```PYTHON
one = 0b1
two = 0b10
three = 0b11
four = 0b100
five = 0b101
six  = 0b110
seven = 0b111
eight = 0b1000
nine  = 0b1001
ten = 0b1010
eleven = 0b1011
twelve = 0b1100

print bin(1)
# 0b1

int("110", 2)
# ==> 6
```
- 숫자를 이진수로 표현할 수 있다.
- bin 함수를 쓰면 숫자를 바이너리값으로 바꿀 수 있다.
- int 함수는 텍스트를 숫자 타입으로 바꿔주는데 두 번째 인자를 적을 수 있고, 이 경우 두번째 인자로 받은 진법으로 적힌 숫자를 10진법으로 반환해준다.

```python
shift_right = 0b1100
shift_left = 0b1

# Your code here!
shift_right = shift_right >> 2
shift_left = shift_left << 2

print bin(shift_right)
print bin(shift_left)
#0b11
#0b100
```
- '>>'나 '<<'를 써서 비트를 옮길 수 있다.
- or 연산자, not 연산, and 연산, xor연산 등등이 같이 나오는 10장..
