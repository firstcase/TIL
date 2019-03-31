# 1. Git이란?
- 깃(Git /ɡɪt)은 컴퓨터 파일의 변경사항을 추적하고 여러 명의 사용자들 간에 해당 파일들의 작업을 조율하기 위한 분산 버전 관리 시스템이다. 소프트웨어 개발에서 소스 코드 관리에 주로 사용되지만 어떠한 집합의 파일의 변경사항을 지속적으로 추적하기 위해 사용될 수 있다.
- "global information tracker" vs "goddamn idiotic truckload of sh*t"
https://en.wikipedia.org/wiki/Git
- 그걸 만든 리누스 토발즈 라는 아저씨는 이런 사람 https://namu.wiki/w/%EB%A6%AC%EB%88%84%EC%8A%A4%20%ED%86%A0%EB%A5%B4%EB%B0%9C%EC%8A%A4

# 2. Github이란?
git을 호스팅해주는 웹 서비스이며,  git 저장소 서버를 대신 유지 및 관리해주는 서비스.

오픈소스 프로젝트는 무료이며, private 프로젝트는 유료다.
다른 유저들과 함께 온라인으로 하나의 프로그램을 제작하는 것도 가능하여,
많은 오픈소스 프로그램들이 github을 통해서 전세계 유저들에 의해 제작되고 있다.

# 3. 깃헙 가입하기
- https://github.com/
- 가입하지 않아도 사내 계정으로 로그인할 수 있음
- 이름과 메일주소 설정하기(터미널에서)
```bash
# Set your username:
git config --global user.name "FIRST_NAME LAST_NAME"
# Set your email address:
# 깃헙가입할 때 넣은 메일주소로 설정해 줘야 함
git config --global user.email "MY_NAME@example.com"
```

# 4. 리파지토리 만들기
- 초록색 뉴 버튼을 누른다
- repository name + public + non-check about readme
- readme 파일을 생성하면 로컬과 상태값이 다르기 때문에 내 컴퓨터에 클론을 받아서 수정 후 push를 해줘야 한다.
- 터미널에서 init을 하고 최초 commit을 푸시해주면 이후에 아톰으로 연결해서 사용할 수 있다.
```bash
MacBook-Pro-25:~ lucie.dream$ mkdir test
MacBook-Pro-25:~ lucie.dream$ cd test
MacBook-Pro-25:test lucie.dream$ ls
MacBook-Pro-25:test lucie.dream$ git init
Initialized empty Git repository in /Users/lucie.dream/test/.git/
MacBook-Pro-25:test lucie.dream$ ls
MacBook-Pro-25:test lucie.dream$ ls -al
total 0
drwxr-xr-x   3 lucie.dream  staff    96  3 31 22:02 .
drwxr-xr-x+ 53 lucie.dream  staff  1696  3 31 22:01 ..
drwxr-xr-x   9 lucie.dream  staff   288  3 31 22:02 .git
MacBook-Pro-25:test lucie.dream$ vi a.txt
MacBook-Pro-25:test lucie.dream$ git add a.txt
MacBook-Pro-25:test lucie.dream$ git commit -m "test"
[master (root-commit) 38762a6] test
 1 file changed, 1 insertion(+)
 create mode 100644 a.txt
MacBook-Pro-25:test lucie.dream$ git push origin master
fatal: 'origin' does not appear to be a git repository
fatal: Could not read from remote repository.

Please make sure you have the correct access rights
and the repository exists.
MacBook-Pro-25:test lucie.dream$ git remote add origin https://github.com/firstcase/test.git
MacBook-Pro-25:test lucie.dream$ git push origin master
Counting objects: 3, done.
Writing objects: 100% (3/3), 211 bytes | 211.00 KiB/s, done.
Total 3 (delta 0), reused 0 (delta 0)
To https://github.com/firstcase/test.git
 * [new branch]      master -> master
```
- 아톰 다운로드 https://atom.io/
- 아니면 아톰에서 리파지토리 생성부터 할 수 있음

# 5. commit과 push
- commit : 파일 및 디렉토리에 대한 변경 사항을 Git의 인덱스에 기록한다.(커미트는 로컬 저장소에 적용되므로 원격 중앙 저장소를 사용하는 경우에는 Git의 push 명령을 사용하여 로컬 변경 사항을 원격 저장소에 저장해야 한다.)

- push : 로컬 인덱스 및 오브젝트 변경 정보를 사용하여 원격 저장소를 업데이트한다.

# 6. fork
- fork : 다른 원격 저장소에 있는 히스토리를 그대로 나의 github 원격 저장소에 복사하는 것을 말한다. 다른 사람 프로젝트에 바로 push할 수 없기 때문에 일단 내 저장소로 프로젝트를 가져온다. 그다음 내가 contributing을 원래 원격 저장소로 요청할 수 있다.
- [참고이미지] https://ourcstory.tistory.com/131

# 7. pull request와 merge
- pull request : 원래 리파지토리에 내 커밋의 반영을 요청하는 것
- merge : 수정된 코드를 병합하는 것
- [자세한 방법] https://wayhome25.github.io/git/2017/07/08/git-first-pull-request-story/
