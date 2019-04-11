# 첫 번째 장고 앱 작성하기, part 3

- url에서 / 뒤에 있는 부분을 path라고 한다.
- view에서 화면을 예쁘게 만들려면 html 파일을 만들어줘야 한다.
- <a 태그는 링크를 만들어 준다.
- 404 not found  화면에 왜 에러가 났는지를 표시해주는 화면을 만들어준다. 이 기능은 많이 쓰는 거라서 짧게 표현해주는 방법을 별도로 제공하고 있다.
```python
from django.shortcuts import get_object_or_404, render

from .models import Question
# ...
def detail(request, question_id):
    question = get_object_or_404(Question, pk=question_id)
    return render(request, 'polls/detail.html', {'question': question})
```
- url의 이름공간 정하기 : polls/urls.py 파일에 app_name을 추가하여 어플리케이션의 이름공간을 설정할 수 있다.
