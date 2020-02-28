# 파이썬 모듈 복습

1. 모듈이란?
함수나 변수 또는 클래스를 모아놓은 파일. 다른 파이썬 프로그램에서 불러와 사용할 수 있게끔 만든 파이썬 파일이라고도 할 수 있다.

2. 모듈 불러오기
```python
import mod1
    print(mod1.add(3, 4))
    print(mod1.sub(4, 2))
```
- import mod1.py 로 입력하지 않는다. 모듈 내의 함수를 쓸 때는 모듈 이름 뒤에 도트를 붙이고 함수 이름을 쓰면 된다.
- import는 현재 디렉토리 파일이나 파이썬 라이브러리가 저장된 디렉토리에 있는 모듈만 불러올 수 있다.
- mod1.add 처럼 쓰지 않고 add로 쓰고 싶으면 "from 모듈명 import 모듈함수"를 사용한다.
```python
from mod1 import add, sub
from mod1 import *
add(3, 4)
```

3. if__name__ == "__main__": 의 의미
```Python
def add(a, b):
    return a+b

def sub(a, b):
    return a-b

if __name__ == "__main__":
    print(add(1, 4))
    print(sub(4, 2))
```
- 파이썬의 __name__ 변수는 파이썬이 내부적으로 사용하는 특별한 변수 이름이다. 만약 직접 mod1.py 파일을 실행할 경우 mod1.py의 __name__ 변수에는 __main__ 값이 저장된다. 하지만 파이썬 셸이나 다른 파이썬 모듈에서 mod1을 import 할 경우에는 mod1.py의 __name__ 변수에는 mod1.py의 모듈 이름 값 mod1이 저장된다.

4. 클래스나 변수 등을 포함한 모듈
```python
# mod2.py
PI = 3.141592

class Math:
    def solv(self, r):
        return PI * (r ** 2)

def add(a, b):
    return a+b
```
```python
>>> import mod2
>>> print(mod2.PI)
>>> a = mod2.Math()
>>> print(a.solv(2))
>>> print(mod2.add(mod2.PI, 4.4))
```

5. 다른 파일에서 모듈 불러오기
- sys.path.append 사용하기
- PYTHONPATH 환경변수 사용하기
