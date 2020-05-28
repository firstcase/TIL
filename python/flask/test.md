## Unit Test 하는 법

1. 코드 예시
```Python
class UnitTest(unittest.TestCase):
    def setUp(self):
        self.domain = 'http://localhost:5000/api/multiply'

    def test_mul(self):
        self.assertEqual(18, backend.multiply(3, 6))
```
- unittest framework 내부의 TestCase라는 클래스를 사용하기 때문에 원하는 테스트를 포함하고 있는 클래스를 TestCase에 오버래핑합니다. 내부의 setUp(self)는 해당 클래스 내부에서 사용할 변수들을 지정합니다. setUp(self)는 일반적으로 Python에서 클래스 내부의 __init__(self)와 같은 기능을 한다고 보면 된다.
- 테스트하고 싶은 기능들을 test_mul(self)와 같은 형식으로 선언한 후 함수 내부에 원하는 기능을 넣으면 된다.
- 'unittest.TestCase'라는 말을 항상 써줘야 한다
- setUp은 안해도 된다. 실제 테스트코드 전에 한 번 불러주는 것.


2. pytest 설치
```
pip install pytest
```
- pytest 공식홈페이지 예제

```python
# content of test_sample.py
def inc(x):
    return x + 1

def test_answer():
    assert inc(3) == 5
```

3. pycharm 유닛테스트 기능 활용하기
https://www.jetbrains.com/help/pycharm/testing-your-first-python-application.html
- test 생성할 때 클래스 명에서 go to를 해줘야 test 선택지가 나온다.
- class 이하의 매서드를 자동으로 test list로 추천한다. 원하는 메소드를 선택하면 된다.
- 자동으로 fail이 출력되는 코드로 test 파일이 생성된다.
- ok가 나게끔 마지막 코드를 수정하고, 중간에 원하는 코드를 짜면 된다. test db를 생성하는 것이 목적이므로 데이터를 저장하는 코드를 짜주면 완성.

4. 디버그
- 테스트 코드 보다가 디버깅하는 법도 잠깐 보게 되었다. 
- pycharm에서 벌레모양 버튼을 실행시키면 된다.
- break point을 찍어두면 디버그 모드에서만 실행된다.
- 우측의 'Watches'영역에 +를 눌러 특정 변수들의 값이 어떻게 변하는지 트래킹할 수 있다.
- 'Mute break point'버튼을 누르면 중단점 작동을 멈추게 할 수 있다.
- step over(F10) : break point 설정된 파일 내에서 중단점 이후 코드를 한줄씩 실행시킨다
- step into(F11) : 프로젝트 전체에서 break point 이후의 코드를 한줄씩 실행
- step out(shift + F11) : 중단점 이후에 실행되는 메소드로 이동
- run to cursor(Ctrl + F10) : 현재 커서가 가리키고 있는 라인까지 이동
