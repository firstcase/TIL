# Writing your first Django app, part 2

https://docs.djangoproject.com/en/2.2/intro/tutorial02/

1. Database setup
- 일단은 튜토리얼 실습을 위해서 무거운 것을 깔지 않고 sqlite3을 사용했다.
- 나중에 파일에서 그부분만 고쳐주면 서버로 데이터관리도 할 수 있다.
- e.g.) 'django.db.backends.mysql',

2. 모델 만들기
- poll을 만들기 위해서 Question과 Choice 클래스를 만든다.
- 이때 Choice 클래스에 Question 값을 받는 구조로 만들면 각 선택지가 몇 번 문항에 연결된 것인지 알 수 있게 된다.
```python
from django.db import models


class Question(models.Model):
    question_text = models.CharField(max_length=200)
    pub_date = models.DateTimeField('date published')


class Choice(models.Model):
    question = models.ForeignKey(Question, on_delete=models.CASCADE)
    choice_text = models.CharField(max_length=200)
    votes = models.IntegerField(default=0)
```

3. 모델의 활성화
- mysite/settings.py 파일에 앱 경로를 추가해 준다.
- 데이터 테이블을 생성해준다.
```bash
python manage.py makemigrations polls
python manage.py sqlmigrate polls 0001
python manage.py migrate
```

4. Django 관리자 소개
- 관리자 기능은 매우 손쉽게 만들 수 있는데 놀랍게도 매우 편리한 기능을 제공하고 있다! (초감탄)
```bash
python manage.py createsuperuser
```
- 슈퍼유저 명령어를 실행하고 id와 pw를 입력해주면 간단하게 세팅이 끝난다.
- 서버를 실행해서 로컬 도메인에 접속하면 로그인 화면을 볼 수 있다. 그리고 놀랍게도 로그인하면 관리자 사이트에서 question을 직접 편집하고 관리할 수 있다!
