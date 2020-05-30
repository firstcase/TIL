# flask db 구성하기

- db를 처음 만들 때부터 test, dev, prod 테이블로 나눠서 구성할 수 있다.
- 내가 만드는 시스템은 현재 운영 중이 아니기 때문에 샘플 데이터를 아무데나 올릴 수 있지만 서비스 중인 시스템에 샘플데이터를 넣을 때는 test 같은 테이블에 넣어주어야 하기 때문.
- database.py 를 만들고 db관련 모듈을 모아주면 좋다.


[참고] https://velog.io/@homekeeper/Flask-구조-DB-설정
