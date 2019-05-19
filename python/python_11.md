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

4. A Methodical Approach
- 새로운 메소드 생성할 때는 일단 인자로 self를 넣어줘야 하는 듯
```python
class Animal(object):
  """Makes cute animals."""
  is_alive = True
  def __init__(self, name, age):
    self.name = name
    self.age = age
  # Add your method here!
  def description(self):
    print self.name
    print self.age

hippo = Animal("lucie", 33)
hippo.description()
```

5. Inheritance
- 인자에 부모 클래스명을 넣어주면 클래스를 상속받을 수 있다.
```python
class Customer(object):
    """Produces objects that represent customers."""
    def __init__(self, customer_id):
        self.customer_id = customer_id

    def display_cart(self):
        print "I'm a string that stands in for the contents of your shopping cart!"

class ReturningCustomer(Customer):
    """For customers of the repeat variety."""
    def display_order_history(self):
        print "I'm a string that stands in for your order history!"

monty_python = ReturningCustomer("ID: 12345")
monty_python.display_cart()
monty_python.display_order_history()
```

6. Override
```python
class Employee(object):
    """Models real-life employees!"""
    def __init__(self, employee_name):
        self.employee_name = employee_name

    def calculate_wage(self, hours):
        self.hours = hours
        return hours * 20.00

# Add your code below!
class PartTimeEmployee(Employee):
  def calculate_wage(self, hours):
    self.hours = hours
    return hours * 12.00

    def full_time_wage(self, hours):
      return super(PartTimeEmployee, self).calculate_wage(hours)

  milton = PartTimeEmployee('Milton')
  print milton.full_time_wage(10)
```
- 상속받아서 동일한 메소드 명으로 오버라이드가 가능하다.
- super를 사용하면 부모클래스의 메소드를 사용할 수 있다.
