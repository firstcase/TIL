# Jinja2 API를 이용한 템플릿 분석
https://spoqa.github.io/2012/06/27/using-jinja2-api.html
https://velog.io/@decody/-Flask-Template에-Jinja2-사용하기


1. Jinja2 간단한 문법
- {{...}} : 변수나 표현식
- {%...%} : if나 for 같은 제어문
- {#...#} : 주석


2. Jinja2의 동작방식
- 뼈대가 되는 템플릿 파일(html 등)을 읽어서 이름과 값이 묶여 있는 '환경(Enviroment)'에서 평가한 뒤, 다시 문자열로 반환.

```Python
from jinja2 import Environment, PackageLoader
env = Environment(loader=PackageLoader('yourapplication', 'templates'))

template = env.get_template('template.html')

print template.render(msg="Hello World!")
```

```html
<!DOCTYPE HTML>
<html>
  <head></head>
  <body>
    {{ msg }}
  </body>
</html>
```
- flask에서 사용할 때 코드 예시
```python
from flask import Flask, render_template
app = Flask(__name__)

@app.route("/")
def index():
    return render_template("template.html",
                           msg="Hello World!")

if __name__ == "__main__":
    app.run()
```

3. if와 for 사용하기
```html
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    {% if title %}
    <title>{{ title }}</title>
    {% endif %}
</head>
<body>

<h1>Bind string: {{ home_str }}</h1>
<p>This page is for Flask tutorial.</p>
<p>Bind list value: {{ home_list[2:4] }}</p>
<ul>
  {% for idx in home_list %}
  <li>{{ idx }}</li>
  {% endfor %}
</ul>

</body>
</html>
```
```Python
from flask import Flask, render_template
app = Flask(__name__)

@app.route('/')
@app.route('/index')
def index():
    return render_template(
                'index.html',
                title     = 'Flask Template Test',
                home_str  = 'Hello Flask!',
                home_list = [1, 2, 3, 4, 5]
            )

@app.route('/info')
def info():
    return render_template('info.html')
```
