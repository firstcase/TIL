# 최근 일주일 데이터 가져오기

- 최근 일주일간 응답한 팀 목록을 출력하는 기능을 만들어 보았다.
- 팀목록은 distinct()를 사용해서 유니크 추출할 수 있다.

```python
import datetime

def allBy7days(self):
    current_time = datetime.datetime.now()
    a_week = current_time - datetime.timedelta(weeks=1)
    return db_session.query(Answer.team.distinct()).filter(Answer.created_at > a_week).all()
```
- 참고 : https://stackoverflow.com/questions/17868743/doing-datetime-comparisons-in-filter-sqlalchemy

# 데이터 가공에 필요한 기능들
- 참고 : https://docs.sqlalchemy.org/en/13/orm/tutorial.html
- counting
```python
session.query(User).filter(User.name.like('%ed')).count()
# 2
```
  + count() : row가 몇 개인지 리턴해준다

- func.count()
```python
from sqlalchemy import func

session.query(func.count(User.name), User.name).group_by(User.name).all()
# [(1, u'ed'), (1, u'fred'), (1, u'mary'), (1, u'wendy')]

session.query(func.count('*')).select_from(User).scalar()
# 4

session.query(func.count(User.id)).scalar()
# 4

```
