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
