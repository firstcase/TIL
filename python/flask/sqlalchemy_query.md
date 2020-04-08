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

- sqlalchemy를 이용해서 JSON 데이터를 받으면 list로 반환된다.
- like절로 검색하기
```Python
result = stock.query.filter(stock.name.like('%'+search_text+'%')).all()
print(result)
print(type(result))
```

- pandas를 이용해 변환할 수 있다.
```python
import pandas as df

queryset = stock.query.filter(stock.name.like('%'+search_text+'%'))
# 위와 달라진게 있다면 끝에 .all() 이 없다

df = pd.read_sql(queryset.statement, queryset.session.bind)
print(json.loads(df.to_json()))
```
- 옵션으로 orient='records'를 넣으면 다른 형태로 json을 구성할 수 있다.


# 최근 일주일간 설문에 응답한 적이 있는지 확인하기

```python
import datetime

class AnswerManager:

    def is_answered(self, ldap_id):
        current_time = datetime.datetime.now()
        a_week = current_time - datetime.timedelta(weeks=1)
        print(ldap_id)
        result = db_session.query(Answer.ldap_id.distinct()).filter(Answer.created_at > a_week).filter(Answer.ldap_id == ldap_id).first()
        return result is not None
```
- 최근 일주일간 응답한 데이터에서 id를 distinct로 추출한다.
- filter를 연속해서 사용할 수 있기 때문에 최근 일주일 데이터를 거르고 특정 id와 일치하는지 거를 수 있다.
- all() 대신에 first()를 사용할 수 있다. 쿼리의 첫 번째 엔티티를 반환한다.
