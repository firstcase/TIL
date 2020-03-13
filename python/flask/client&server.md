# 서버와 클라이언트

1. 상황 설정
- 인터넷을 이용한 웹을 만든다고 가정한다.
- 인터넷으로 연결된 컴퓨터 2대를 장만한다. 각 컴퓨터에 프로그램 한 개씩을 만들고 각각 웹 브라우저와 웹 서버라는 이름을 붙인다.
- 웹 서버가 설치된 컴퓨터에 info.cern.ch 라는 주소를 부여한다. 그리고 같은 컴퓨터의 디렉토리에 index.html 이라는 파일을 저장한다.
- 웹 브라우저가 설치된 컴퓨터의 주소창에 http://info.cern.ch/index.html 이라는 주소를 입력하고 엔터를 친다.

2. 서버와 클라이언트
- 웹 브라우저가 설치된 컴퓨터는 인터넷을 통해서 전기 신호를 info.cern.ch라는 주소의 컴퓨터에게 보낸다. 그 신호 안에는 이런 내용이 적혀있다. '나는 index.html이라는 파일의 코드를 원한다.'
- info.cern.ch에 설치된 웹 서버라는 프로그램이 어떤 디렉토리에서 index.html이라는 파일을 찾는다. 그리고 그 내용을 읽어서 웹 브라우저가 설치된 컴퓨터 전기적 신호를 보낸다.
- 웹 브라우저가 설치된 컴퓨터에 index.html 파일의 코드가 도착한다. 웹 브라우저는 그 코드를 읽어서 웹 페이지를 화면에 출력한다.

3. 요약
- 웹브라우저가 깔린 컴퓨터는 정보를 요청한다. <= 클라이언트 컴퓨터
- 웹서버가 깔린 컴퓨터는 정보를 응답한다. <= 서버 컴퓨터