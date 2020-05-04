# a 태그 : href, target, title

1. a태그
- 문서를 링크 시키기 위해 사용하는 태그
- href : 연결할 주소를 지정한다
- target : 링크를 클릭할 때 창을 어떻게 열지 설정한다
- title : 해당 링크에 마우스 커서를 올릴 때 도움말 설명을 설정한다


2. href
```HTML
<a href="https://brunch.co.kr/@luciedream">루시의 브런치로 이동하기</a>
```
- 상대경로 url : 같은 프로젝트 폴더 내의 경로 지정이 가능
- 엘리먼트 ID를 이용한 url : 같은 문서 내의 엘리먼트 ID를 지정
- 자바스크립트 함수 호출
```html
<a href="javascript:alert('알림');">알림</a>
```


3. target
```html
<a href="https://brunch.co.kr/@luciedream" target="_blank">루시의 브런치로 이동하기</a>
```
- self : 링크를 클릭한 해당 창에서 연다
- blank : 링크를 새창으로 연다
- parent : 부모 창에서 연다
- top : 전체 브라우저 창에서 가장 상위의 창에서 연다


4. title
```html
<a href="https://brunch.co.kr/@luciedream" title="루시의 브런치">루시의 브런치로 이동하기</a>
```
