# Jinja2 API를 이용한 템플릿 분석
https://spoqa.github.io/2012/06/27/using-jinja2-api.html
https://velog.io/@decody/-Flask-Template에-Jinja2-사용하기


1. Jinja2 간단한 문법
- {{...}} : 변수나 표현식
- {%...%} : if나 for 같은 제어문
- {#...#} : 주석


2. Jinja2의 동작방식
- 뼈대가 되는 템플릿 파일(html 등)을 읽어서 이름과 값이 묶여 있는 '환경(Enviroment)'에서 평가한 뒤, 다시 문자열로 반환.
- 꼭 <head>나 <body> 같은 태그 안에 넣지 않아도 동작한다.

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

4. for문에서 index 가져오는 방법
```HTML
<ul>
    {% for item in items %}
   <li>
     {{ loop.index }} 번째 줄입니다
   </li>
    {% endfor %}
</ul>
```
출력결과는 아래와 같다.
```
1 번째 줄입니다
2 번째 줄입니다
3 번째 줄입니다
```

5. 템플릿 상속
- 템플릿 상속은 여러분의 사이트에 대한 모든 일반적인 요소들을 포함한 기본 “스켈레톤(skeleton)” 템플릿을 생성하도록 하고 자식 템플릿은 기본 템플릿을 오버라이드(override)할 수 있는 blocks 을 정의한다.

```HTML
<html>
  <head>
    {% block head %}
    <link rel="stylesheet" href="{{ url_for('static', filename='style.css') }}">
    <title>{% block title %}{% endblock %} - My Webpage</title>
    {% endblock %}
  </head>
<body>
  <div id="content">{% block content %}{% endblock %}</div>
  <div id="footer">
    {% block footer %}
    &copy; Copyright 2010 by <a href="http://domain.invalid/">you</a>.
    {% endblock %}
  </div>
</body>
```
- 이 예제에서, {% block %} 태그는 자식 템플릿이 채울 수 있는 네개의 블럭을 정의한다. block 태그가 하는 전부는 템플릿 엔진에 자식 템플릿이 템플릿의 block 태그를 오버라이드할 수 도 있다라고 알려준다.

```HTML
{% extends "layout.html" %}
{% block title %}Index{% endblock %}
{% block head %}
  {{ super() }}
  <style type="text/css">
    .important { color: #336699; }
  </style>
{% endblock %}
{% block content %}
  <h1>Index</h1>
  <p class="important">
    Welcome on my awesome homepage.
{% endblock %}
```
- {% extends %} 태그가 핵심이다. 이 태그는 엔진에게 이 템플릿이 다른 템플릿을 확장한다고 알려준다. 템플릿 시스템이 이 템플릿을 검증할 때 가장 먼저 부모 템플릿을 찾는다. 그 확장 태그가 템플릿에서 가장 먼저 있어야 한다. 부모 템플릿에 정의된 블럭의 내용을 보여주려면 {{ super() }}를 사용하면 된다.
