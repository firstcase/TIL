# 장고 설치하고 프로젝트 시작하기
https://docs.djangoproject.com/en/2.2/intro/tutorial01/

1. 장고 설치하기
- 터미널에서 쉽게 설치할 수 있다.
```bash
pip install Django
```

2. 프로젝트 생성하기
```bash
django-admin startproject mysite

atom mysite
# 아톰을 실행해서 거기서 편집함
```

3. 서버실행하기
```bash
python manage.py runserver
```

4. poll 어플리케이션 만들기
```bash
python manage.py startapp polls
```
- atom에서 poll 이라는 폴더가 생성되고 자동으로 파일이 깔린 것을 확인할 수 있다.
- 튜토리얼이 시키는대로 poll의 views와 urls 파일을 수정해 준다.
- 그렇게 하고 다시 runserver 를 실행시켜 로컬서버를 띄우면 화면에 views에 만든 인스턴스가 출력된다. 
