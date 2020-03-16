# Python Static methods

스태틱 메서드에 대해 공부할 때 클래스 메서드와 비교를 해서 볼 수 있다.
전달 받은 숫자에 2를 곱하는 함수를 각각 만든다.
```Python
class MyClass:
    @classmethod
    def my_doubler_class(cls, num):
        print(num * 2)

    @staticmethod
    def my_doubler_static(num):
        print(num * 2)
```
그뒤에 일반적인 방식으로 클래스를 인스턴스화 해서 함수를 사용하면 동일한 결과를 출력한다.
```python
mc = MyClass()
mc.my_doubler_class(10)  # 20
mc.my_doubler_static(10)  # 20
```

클래스 메서드와 스태틱 메서드는 둘 다 인스턴스화 하지 않고 호출 가능하다.
```python
MyClass.my_doubler_class(10)  # 20
MyClass.my_doubler_static(10)  # 20
```

하지만 만약 클래스 내에서 사용하는 변수를 참조해야 한다면, 스태틱 메서드의 경우는 참조가 불가능하다.
self를 통한 접근도 안된다.
```python
class MyClass:
    print_format = "{} * 2 = {}"
    @classmethod
    def my_doubler_class(cls, num):
        print(cls.print_format.format(num, num * 2))

    @staticmethod
    def my_doubler_static(num):
        print(print_format.format(num, num * 2))


MyClass.my_doubler_class(10)  # 20
MyClass.my_doubler_static(10)  # NameError: name 'print_format' is not defined
```
