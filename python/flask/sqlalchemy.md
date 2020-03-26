# SQLAlchemy in Flask
https://flask.palletsprojects.com/en/1.1.x/patterns/sqlalchemy/

- Flask-SQLAlchemy는 널리 사용되는 Python 객체 관계형 매퍼 (ORM) SQLAlchemy에 대한 지원을 Flask 응용 프로그램에 추가하는 Flask 확장이다.

```Python
from sqlalchemy import create_engine
from sqlalchemy.orm import scoped_session, sessionmaker
from sqlalchemy.ext.declarative import declarative_base

engine = create_engine('sqlite:////tmp/test.db', convert_unicode=True)
db_session = scoped_session(sessionmaker(autocommit=False,
                                         autoflush=False,
                                         bind=engine))
Base = declarative_base()
Base.query = db_session.query_property()

def init_db():
    # import all modules here that might define models so that
    # they will be registered properly on the metadata.  Otherwise
    # you will have to import them first before calling init_db()
    import yourapplication.models
    Base.metadata.create_all(bind=engine)
```
- 테이블과 모델을 한 번에 선언해줄 수 있다.
- Base 클래스를 활용하면 세션 스콥을 신경쓸 필요 없게 된다.
- 세션 종료를 위해서 아래와 같은 코드를 추가한다.
```Python
from yourapplication.database import db_session

@app.teardown_appcontext
def shutdown_session(exception=None):
    db_session.remove()
```

- 데이터 생성을 위한 코드는 model.py 에 짠다.
```Python
from sqlalchemy import Column, Integer, String
from yourapplication.database import Base

class User(Base):
    __tablename__ = 'users'
    id = Column(Integer, primary_key=True)
    name = Column(String(50), unique=True)
    email = Column(String(120), unique=True)

    def __init__(self, name=None, email=None):
        self.name = name
        self.email = email

    def __repr__(self):
        return '<User %r>' % (self.name)
```
- '__init__' 펑션을 활용해서 데이터베이스를 생성할 수 있다.
```Python
from yourapplication.database import init_db
init_db()
```
- 엔트리를 DB에 추가할 때는 아래와 같은 코드를 쓴다.
```Python
>>> from yourapplication.database import db_session
>>> from yourapplication.models import User
>>> u = User('admin', 'admin@localhost')
>>> db_session.add(u)
>>> db_session.commit()
```
- 쿼리도 간단하다
```Python
>>> User.query.all()
[<User u'admin'>]
>>> User.query.filter(User.name == 'admin').first()
<User u'admin'>
```

- 실제 적용하면서 겪은 어려운 일
  + 무엇을 임포트 해와야하는지 헷갈렸다. : model에 만든 클래스를 임포트 해야함
  + session에 id가 물려있는데 그 값을 어떻게 가져오지? session['logged_in']
  + new_data를 생성할 건데 검색해도 안나온다 @.@ : 내가 데이터 모델을 생성할 때 인자를 네 가지 받도록 만들어 두었음. 그러므로 클래스를 부르고 지정한 인자를 네 가지 넣어주어야 함. 이때 타입을 테이블 만들 때 지정한 대로 잘 맞춰줘야 함.
  + 반복문으로 데이터를 보낸다면? : 반복문 안에 db_session.add()를 넣어주고, db_session.commit()은 반복문 밖에 한번만 써주면 된다.
  + 반복문으로 데이터를 보내고 싶은데, 반복횟수 역시 db가 알고 있다? : 디비에서 quary.all()로 불러와서 해당 리스트만큼 돌려주면 됨.
  + sqlalchemy.exceptions.InvalidRequestError: No transaction is begun : 다 잘 설정했다고 생각했으나 트랜젝션이 시작되지 않았다는 에러메시지를 뱉었고, db 데이터 테이블도 깨끗... 이럴 때는 session.begin() 명령어로 세션 시작을 해주면 해결된다.
