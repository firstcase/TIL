# 로그인, 쿠키와 세션

1. 쿠키(Cookie)
- 클라이언트인 웹 브라우저 로컬에 저장하는 키와 값이 들어있는 작은 데이터 파일
- 만료시점 : 사용자 인증이 유효한 시간을 명시할 수 있음, 브라우저가 종료되어도 유효시간이 남아있으면 인증이 유지됨
- 쿠키 구성 요소
  + 이름 : 각 쿠키에 대한 식별자
  + 값 : 쿠키의 이름과 관련된 값
  + 유효시간 : 쿠키의 유지시간
  + 도메인 : 쿠키를 전송할 도메인
  + 경로 : 쿠키를 전송할 도메인
- 쿠키 동작 방식
  + 클라이언트가 페이지 요청
  + 서버에서 쿠키 생성
  + HTTP 헤더에 쿠키를 포함시켜 응답
  + 브라우저가 종료되어도 쿠키 만료 기간이 있다면 클라이언트에서 보관
  + 같은 요청을 할 경우 HTTP 헤더에 쿠키를 함께 보냄
  + 서버에서 쿠키를 읽어 이전 상태정보를 변경할 필요가 있을 때 쿠키를 업데이트 해 변경된 쿠키를 HTTP 헤더에 포함시켜 응답
- 예시 : 방문 사이트에서 아이디/비번 저장, 쇼핑몰의 장바구니


2. 세션
- 일정 시간 동안 같은 사용자, 브라우저로부터 들어오는 요구를 하나의 상태로 보고 그 상태를 일정하게 유지시키는 기술
- 사용자 정보를 브라우저에 저장하지 않고 서버에서 관리한다는 점이 쿠키와 다르다.
- 만료시점 : 서버에서 클라이언트를 구분하기 위해서 세션 ID를 부여하여 웹 브라우저가 서버에 접속해서 브라우저를 종료할 때까지 인증상태 유지
- 장점 : 클라이언트의 정보를 서버에 저장하기 때문에 쿠키보다 보안에 우수
- 단점 : 사용자가 많아질 경우 서버 메모리를 많이 차지하게 됨 -> 성능저하로 이어짐
- 세션 동작 방식
  + 클라이언트가 서버에 접속 시 세션ID를 발급
  + 클라이언트는 세션 ID에 대해 쿠키를 사용해서 저장
  + 클라이언트가 서버에 다시 접속 시 이 쿠키를 이용해서 세션 ID값을 서버에 전달

3. 세션 구현
- 세션을 사용하기 위해서는 해당 값을 암호화하기 위한 Key값을 코드에서 지정해야 한다.
```python
from flask import Flask, request, session, redirect, url_for
app = Flask(__name__)
app.secret_key = 'any random string'
```
```python
@app.route('/')
def index():
   if 'username' in session:
    	username = session['username']
    	return 'Logged in as ' + username + '<br>' + \
    	"<b><a href = '/logout'>click here to log out</a></b>"

   return "You are not logged in <br><a href = '/login'></b>" + \
      "click here to log in</b></a>"
```

  - 실제로 로그인을 하는 form이 있는 /login URL의 경우
```python
  @app.route('/login', methods = ['GET', 'POST'])
def login():
   if request.method == 'POST':
      session['username'] = request.form['username']
      return redirect(url_for('index'))
   return

   <form action = "" method = "post">
      <p><input type = text name = username/></p>
      <p<<input type = submit value = Login/></p>
   </form>
```
- 로그아웃의 경우 해당 세션 정보를 제거하는 것으로 연결을 끊는 것이 가능함. 세션 제거는 pop메소드를 사용.
```python
@app.route('/logout')
def logout():
   # remove the username from the session if it is there
   session.pop('username', None)
   return redirect(url_for('index'))
```
- 만약 세션의 유효기간을 직접 설정하고 싶다면 아래와 같은 함수를 추가한다.
```python
from datetime import timedelta
from flask import session, app

@app.before_request
def make_session_permanent():
    session.permanent = True
    app.permanent_session_lifetime = timedelta(minutes=5)
```
