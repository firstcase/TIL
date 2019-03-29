# 서버에 주피터 깔고, 백그라운드 실행하기

- 아나콘다 리눅스 버전 설치
https://www.anaconda.com/distribution/
- scp로 다운로드 폴더에 있는 아나콘다 파일을 서버로 옮긴다.
```bash
scp 다운로드위치/Anaconda3-2018.12-Linux-x86_64.sh 내서버:~
```
- bash로 아나콘다 설치 스크립트 실행
```bash
 bash Anaconda3-2018.12-Linux-x86_64.sh
```
- 내 서버로 가서 ls를 치면 새로운 디렉토리가 생성되어 있음
- jupyter notebook 을 치면 주피터가 실행됨
- 백그라운드로 실행하기 위한 작업
```bash
jupyter notebook --ip=**.***.**.** &
```
- 표준 출력되는 내용을 파일로 기록하기 위해 아래 옵션을 추가할 수도 있음
```bash
jupyter notebook --ip=**.***.**.** >> /tmp/jupyter.log 2>&1 &
```
