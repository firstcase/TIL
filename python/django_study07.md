# 첫 번째 장고 앱 작성하기, part 7

1. 관리자 폼 커스터마이징하기
- polls/admin.py 폴더 수정으로 커스터마이징할 수 있다.
```python
from django.contrib import admin

from .models import Question

class ChoiceInline(admin.StackedInline):
    model = Choice
    extra = 3

class QuestionAdmin(admin.ModelAdmin):
    fieldsets = [
        (None,               {'fields': ['question_text']}),
        ('Date information', {'fields': ['pub_date']}),
    ]

admin.site.register(Question, QuestionAdmin)
```
- Question을 만들 때 choice 까지 함께 추가할 수 있는 포맷으로 변경된다. 이따 ChoiceInline의 인자를 admin.TabularInline 로 바꿔주면 화면에 많은 공간을 차지 않고 깔끔하게 포맷을 변경할 수 있다.


2. 관리자 룩앤필 커스터마이징
- mysite/settings.py 파일에 'DIRS' 설정을 바꿔준다. DIRS는 Django 템플릿을 로드 할 때 검사 할 파일 시스템 디렉토리 목록이다.
```PYTHON
TEMPLATES = [
    {
        'BACKEND': 'django.template.backends.django.DjangoTemplates',
        'DIRS': [os.path.join(BASE_DIR, 'templates')],
        'APP_DIRS': True,
        'OPTIONS': {
            'context_processors': [
                'django.template.context_processors.debug',
                'django.template.context_processors.request',
                'django.contrib.auth.context_processors.auth',
                'django.contrib.messages.context_processors.messages',
            ],
        },
    },
]
```
