# 첫 번째 장고 앱 작성하기, part 5
https://docs.djangoproject.com/ko/2.2/intro/tutorial05/

1. 자동화된 테스트 소개
- 왜 테스트를 해야하는가? (내가 하고 싶은 말... 처음에는 그냥 건너뛰었다가 오늘 다시 공부했습니다...ㅠ)
- 테스트를 통해 시간을 절약 할 수 있습니다.
- 테스트는 문제를 그저 식별하는 것이 아니라 예방합니다.
- 테스트가 코드를 더 매력적으로 만듭니다.
  ㄴ 사용자 관점에서 정의를 하게 된다. 클래스를 정의하는 것 위주가 아니라 쓰는 것 위주로 개발을 하게 되기 때문에 더 사용성이 좋은 코드가 나온다고 한다.
- 테스트는 팀이 함께 일하는것을 돕습니다

2. 버그를 노출하는 테스트 만들기
- polls 어플리케이션의 tests.py 파일에 아래와 같이 입력해준다.
```python
import datetime

from django.test import TestCase
from django.utils import timezone

from .models import Question


class QuestionModelTests(TestCase):

    def test_was_published_recently_with_future_question(self):
        """
        was_published_recently() returns False for questions whose pub_date
        is in the future.
        """
        time = timezone.now() + datetime.timedelta(days=30)
        future_question = Question(pub_date=time)
        self.assertIs(future_question.was_published_recently(), False)
  ```

  - 터미널에서 테스트를 실행한다.
  ```bash
  python manage.py test polls
  ```
- 그럼 에러가 나는 것을 볼 수 있다. false가 나와야 하는데 true가 출력된다. 다시 관련 함수를 수정해주고 재실행을 하면 false가 출력된다!
