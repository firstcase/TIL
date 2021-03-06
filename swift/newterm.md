# 모르는 용어 공부하기


오늘 사내에 앱 배포를 시도하는 과정에서, 모르는 말이 많이 나와서 정리해 보았습니다.
질문의 시작은 "빌드가 뭐에요?"였습니다.

## 빌드
컴퓨터 소프트웨어 분야에서 소프트웨어 빌드(software build)는 소스 코드 파일을 컴퓨터에서 실행할 수 있는 독립 소프트웨어 가공물로 변환하는 과정을 말하거나 그에 대한 결과물을 일컫는다. 소프트웨어 빌드에 있어 가장 중요한 단계들 가운데 하나는 소스 코드 파일이 실행 코드로 변환되는 컴파일 과정이다.


## 컴파일
특정 프로그래밍 언어로 쓰여 있는 문서를 다른 프로그래밍 언어로 옮기는 것을 말한다. 컴파일을 수행하는 프로그램은 컴파일러라고 한다. 보통 컴파일을 한다고 하면 엔지니어가 텍스트파일로 만든 것을 컴퓨터 언어로 된 바이너리 파일로 변환하는 것을 말하는 것 같다.


## 바이너리 파일 (c.f. 텍스트파일)
이진 파일 또는 바이너리 파일(binary file)은 컴퓨터 파일로 컴퓨터 저장과 처리 목적을 위해 이진 형식으로 인코딩된 데이터를 포함한다. 이를테면, 포맷 텍스트를 포함하는 컴퓨터 문서 파일을 들 수 있다. 많은 이진 파일 형식은 문자열로 해석될 수 있는 부분을 포함하고 있다. 포맷 정보가 없는 문자열 데이터만 포함하는 이진 파일은 완전한 텍스트 파일이라고 한다. 텍스트로만 이루어진 파일은 보통 이진 파일과 구분짓는데 이진 파일은 완전한 텍스트 이상의 무언가를 더 포함하고 있기 때문이다.


## 키체인
애플의 키 파일 관리 프로그램이다.



## 인증서
보통 앱스토어 배포를 하려면 인증서가 필요한데, 이런 때에 사용하는 인증서에 대한 설명을 '인증서'라는 말로 찾으려고 하면 나오지 않는다. 위키에서도 포털에서도 모두 실패. 특정 목적의 인증서를 범용적인 단어로 찾으려고 하니까 안나오는 것 같다. '앱 인증서'와 같은 말로 시도해 봤으나 역시 실패. 그냥 인증의 역할을 하는 문서 정도로 이해해야 할 것 같다.


## 번들아이디(Bundle Identifier)

A bundle ID or bundle identifier uniquely identifies an application in Apple's ecosystem. This means that no two applications can have the same bundle identifier. To avoid conflicts, Apple encourages developers to use reverse domain name notation for choosing an application's bundle identifier.
