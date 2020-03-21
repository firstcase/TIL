# 서베이 화면을 만들기 위한 블마 양식 모음

1. 모바일 레이아웃
```html
<div class="columns is-mobile">
        <div class="column is-6">팀원들은 상황변화에 따라 유연하게 행동이나 생각을 수정하는 편이다</div>
        <div class="column is-mobile">
            <p class="notification has-text-centered">매우 그렇지 않다</p>
        </div>
        <div class="column is-mobile">
            <p class="notification has-text-centered">그렇지 않다</p>
        </div>
        <div class="column is-mobile">
            <p class="notification has-text-centered">보통이다</p>
        </div>
        <div class="column is-mobile">
            <p class="notification has-text-centered">그렇다</p>
        </div>
        <div class="column is-mobile">
            <p class="notification has-text-centered">매우 그렇다</p>
        </div>
    </div>
```

2. 라디오 버튼 활용하기
```html
<div class="columns is-mobile">
        <div class="column is-6">팀원들은 상황변화에 따라 유연하게 행동이나 생각을 수정하는 편이다</div>
        <div class="control">
            <label class="radio">
                <input type="radio" name="answer">
                매우 그렇지 않다
            </label>
            <label class="radio">
                <input type="radio" name="answer">
                그렇지 않다
            </label>
            <label class="radio">
                <input type="radio" name="answer">
                보통이다
            </label>
            <label class="radio">
                <input type="radio" name="answer">
                그렇다
            </label>
            <label class="radio">
                <input type="radio" name="answer">
                매우 그렇다
            </label>
        </div>
    </div>
```

3. 버튼 만들기
```HTML
<div class="columns is-mobile">
        <div class="column is-6">팀원들은 상황변화에 따라 유연하게 행동이나 생각을 수정하는 편이다</div>
        <button class="button">매우 그렇지 않다</button>
        <button class="button">그렇지 않다</button>
        <button class="button">보통이다</button>
        <button class="button">그렇다</button>
        <button class="button">매우 그렇다</button>
    </div>
```
