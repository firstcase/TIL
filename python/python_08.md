# 8강. LOOPS

```python
while count < 10:
  print "Hello, I am a while and count is", count
  count += 1
```
- 여기서 count +=1 을 안 쓰면 무한반복될 수 있음 주의

```python
choice = raw_input('Enjoying the course? (y/n)')

while choice != 'y' and choice != 'n':
  choice = raw_input("Sorry, I didn't catch that. Enter again: ")
```
- 간단한 오류를 체크할 수 있다.

```python
from random import randint

random_number = randint(1, 10)

guesses_left = 3
while guesses_left > 0:
  guess = int(raw_input("Your guess: "))
  if guess == random_number:
    print "You win!"
    break
  guesses_left -= 1
else:
  print "You lose."
```
- guess = int... 이 부분을 while문 밖에 썼다가 무한 루프 걸렸었음;;

```python
hobbies = []

for num in range(3):
  hobby =  raw_input("Tell me one of your favorite hobbies: ")
  hobbies.append(hobby)

print hobbies
```
- while문 대신 for문을 사용해서 반복문을 만들 수 있다.

```Python
phrase = "A bird in the hand..."

# Add your for loop
for char in phrase:
  if char == 'A' or char == 'a':
    print 'X',
  else :
    print char,
```
- ,를 사용하면 줄바꿈하지 않고 한 줄에 출력할 수 있다.

```python
d = {'a': 'apple', 'b': 'berry', 'c': 'cherry'}

for key in d:
  print key,
  print d[key]
```
- 딕셔너리에서 반복문 돌릴 때 값을 출력하려면 d[key]로 써주면 됨

```Python
choices = ['pizza', 'pasta', 'salad', 'nachos']

print 'Your choices are:'
for index, item in enumerate(choices):
  print index + 1, item
```
- enumerate 함수를 쓰면 쉽게 카운트를 다룰 수 있다

```Python
def is_int(x):
  absolute = abs(x)
  rounded = round(absolute)
  return absolute - rounded == 0

print is_int(10)
print is_int(10.5)
```
- abs 함수 너무 생소했음;;; 절대값 구하는 기능임

```python
def digit_sum(n):
  total = 0
  string_n = str(n)
  for char in string_n:
    total += int(char)
  return total
```
- str() 으로 숫자를 글자로 바꿔주고 int() 로 글자를 숫자로 바꿔줌

```Python
def factorial(x):
    total = 1
    while x>0:
        total *= x
        x-=1
    return total
```
- 파이썬 곱하기도 이런식으로 쓸 수 있다니 엄청나당..

```python
def reverse(text):
    word = ""
    l = len(text) - 1
    while l >= 0:
        word = word + text[l]
        l -= 1
    return word
```
- 글자를 거꾸로 출력하는 함수, len을 써서 글자 위치를 숫자화 한다
