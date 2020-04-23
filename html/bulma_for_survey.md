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
- 아래와 같이 코드를 작성했을 때, 문항과 선택지가 나란한 한줄에 나오지 않고 미묘하게 단차가 났다.
- 이유는 padding 차이였다. column 을 주면 padding 값이 들어가는데 radio 버튼 구역은 padding이 없어서 단차가 난 것이었음. <div class = "culumn control"> 로 수정해주면 나란하게 나오는 것을 확인할 수 있음. 
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

4. summit 버튼 만들기
```HTML
<div class="buttons">
  <input type="submit" class="button is-success is-fullwidth" value="응답완료">
</div>
```
