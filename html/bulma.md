# BULMA 사용해보기

[BULMA](https://bulma.io/)는 CSS 프레임워크다. CSS는 HTML을 꾸밀 수 있는데 CSS 프레임워크는 미리 예쁘게? 꾸며진 CSS를 제공한다.

## 써보기

- html 파일에 head 태그 아래 tag를 추가한다.

```html
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.8.0/css/bulma.min.css">
```

좋은 아이콘을 쓰려면 아래 tag도 추가한다.

```html
<script defer src="https://use.fontawesome.com/releases/v5.3.1/js/all.js"></script>
```

버튼을 하나 만들어서 확인해보자

```html
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.8.0/css/bulma.min.css">
<script defer src="https://use.fontawesome.com/releases/v5.3.1/js/all.js"></script>
</head>
<body>
<button class="button">생버튼</button>
<button class="button is-success">버튼</button>
</body>
</html>
```

- 비밀번호를 입력할 수 있을 것 같은 입력창을 만들어보자

```html
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.8.0/css/bulma.min.css">
<script defer src="https://use.fontawesome.com/releases/v5.3.1/js/all.js"></script>
</head>
<body>
<p class="control has-icons-left">
<input class="input" type="password">
    <span class="icon is-small is-left">
      <i class="fas fa-lock"></i>
    </span>
</p>
</body>
</html>
```
