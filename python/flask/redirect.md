# 플라스크 리다이렉트

```python
from flask import abort, redirect, url_for
from flask import Flask, request, url_for, abort, redirect
app = Flask(__name__)


@app.route('/')
def index():
return redirect(url_for('login2'))


@app.route('/login')
def login2():
return 'good'
```

- redirect(url_for())로 처리를 하는데 괄호안에 url이 아니고 method명을 써줘야 한다.
  + url말고 method 같은 걸로 처리해줬으면 안 헷갈렸을 텐데...
