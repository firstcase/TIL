#  Flask render_template() context

- 플라스크에서 templating을 할 때 context를 넘겨줄 수 있음
- 딕셔너리 형태로 넘겨줌

```Python
@app.route('/')                                                                 
def home():                                                                                                                  
    return render_template(                                                     
        'home.html',                                                            
        greetingDictionary = {"greeting": "hello" , "forthoseabouttorock" :"wesaluteyou" }                                       
    )   
```

```HTML
{% for key in greetingDictionary %}
<h1>{{key}}</h1>
<p>{{greetingDictionary[key]}}</p>
{% endfor %}
```

- 복수의 파라미터를 넘겨줄 수 있음
```Python
@app.route('/survey')
def survey():
    survey_questions = query_question.all()
    is_answered = answer_manager.is_answered()
    return render_template('survey.html', questions=survey_questions, is_answered=is_answered)
```
