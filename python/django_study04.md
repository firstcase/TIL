# 첫 번째 장고 앱 작성하기, part 4

- 제너릭 뷰 사용하기
- polls/urls.py URLconf를 열어 아래와 같이 변경함
```python
from django.urls import path

from . import views

app_name = 'polls'
urlpatterns = [
    path('', views.IndexView.as_view(), name='index'),
    path('<int:pk>/', views.DetailView.as_view(), name='detail'),
    path('<int:pk>/results/', views.ResultsView.as_view(), name='results'),
    path('<int:question_id>/vote/', views.vote, name='vote'),
]
```
- polls/views.py 파일도 아래와 같이 수정했다.
```python
from django.http import HttpResponseRedirect
from django.shortcuts import get_object_or_404, render
from django.urls import reverse
from django.views import generic

from .models import Choice, Question


class IndexView(generic.ListView):
    template_name = 'polls/index.html'
    context_object_name = 'latest_question_list'

    def get_queryset(self):
        """Return the last five published questions."""
        return Question.objects.order_by('-pub_date')[:5]


class DetailView(generic.DetailView):
    model = Question
    template_name = 'polls/detail.html'


class ResultsView(generic.DetailView):
    model = Question
    template_name = 'polls/results.html'


def vote(request, question_id):
    ... # same as above, no changes needed.
```
- vote 함수를 제외한 index, detail, results 함수를 클래스로 바꿔준다. 함수로 되어 있을 때는 절차적으로 동작하지만, 클래스로 바꾸면 선언적으로 표현된다. 즉 절차나 순서에 구애받지 않는 형태로 만들 수 있어 더 완전한 구조를 갖는다. 이해하기도 쉽고, 수정하기도 쉽다.
