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
