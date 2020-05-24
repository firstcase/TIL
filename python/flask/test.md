## Unit Test 하는 법

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
