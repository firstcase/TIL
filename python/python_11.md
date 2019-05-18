# 11강 INTRODUCTION TO CLASSES

1. 클래스는 왜 쓰는가?
- 파이썬도 객체지향 언어임, 클래스를 쓰면 객체가 메소드를 갖게 됨
```PYTHON
class Fruit(object):
  """A class that makes various tasty fruits."""
  def __init__(self, name, color, flavor, poisonous):
    self.name = name
    self.color = color
    self.flavor = flavor
    self.poisonous = poisonous

  def description(self):
    print "I'm a %s %s and I taste %s." % (self.color, self.name, self.flavor)

  def is_edible(self):
    if not self.poisonous:
      print "Yep! I'm edible."
    else:
      print "Don't eat me! I am super poisonous."

lemon = Fruit("lemon", "yellow", "sour", False)

lemon.description()
lemon.is_edible()
```

2. Class Syntax
```python
class NewClass(object):
  # Class magic here
```
- 클래스를 만들고 body를 적어준 뒤 변수를 할당한 뒤 메소드를 불러 줄 수 있다.
```python
class Animal():
  def __init__(self, name):
  	self.name = name

zebra = Animal("Jeffrey")
print zebra.name
```

3. More on __init__() and self
```PYTHON
class Animal(object):
  """Makes cute animals."""
  # For initializing our instance objects
  def __init__(self, name, age, is_hungry):
    self.name = name
    self.age = age
    self.is_hungry = is_hungry

# Note that self is only used in the __init__()
# function definition; we don't need to pass it
# to our instance objects.

zebra = Animal("Jeffrey", 2, True)
giraffe = Animal("Bruce", 1, False)
panda = Animal("Chad", 7, True)

print zebra.name, zebra.age, zebra.is_hungry
print giraffe.name, giraffe.age, giraffe.is_hungry
print panda.name, panda.age, panda.is_hungry
```
