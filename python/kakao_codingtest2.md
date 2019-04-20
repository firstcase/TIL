# 2. 다트 게임(난이도: 하)
http://tech.kakao.com/2017/09/27/kakao-blind-recruitment-round-1/

- 다트는 총 3번 던지고, 결과는 하나의 문자열로 나온다.
- 하나의 문자열을 다트 각 회차의 결과로 나누어 배열로 끊어보았다.
```PYTHON
def dartgame(text):
    new_array = []
    int_index = []
    int_edit = []
    score_array = []
    for x in text:
        new_array.append(x)
    for i in range(len(new_array)):
        if new_array[i].isdigit():
            int_index.append(i)
    print(int_index)
    int_edit.append(0)
    for i in range(1,len(int_index)):
        if abs(int_index[i-1] - int_index[i]) != 1:
            int_edit.append(int_index[i])
    print(int_edit)
    score_array.append(new_array[int_edit[0]:int_edit[1]])
    score_array.append(new_array[int_edit[1]:int_edit[2]])
    score_array.append(new_array[int_edit[2]:])
    return score_array


print(dartgame("1S2D*3T"))
```

- 그리고 내일은 이 점수를 계산하는 걸 마저 짜보도록 하겠습니다. 헥헥
