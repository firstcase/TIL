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
