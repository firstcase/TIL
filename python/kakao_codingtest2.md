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
    int_edit.append(0)
    for i in range(1,len(int_index)):
        if abs(int_index[i-1] - int_index[i]) != 1:
            int_edit.append(int_index[i])
    score_array.append(new_array[int_edit[0]:int_edit[1]])
    score_array.append(new_array[int_edit[1]:int_edit[2]])
    score_array.append(new_array[int_edit[2]:])

    print(score_array)

# 여기서부터 점수 계산하는 코드!
    raw_score = []
    for i in range(3):
        score_text = score_array[i]
        if score_text[1] != "0":
            if score_text[1] == "D":
                raw_score.append(int(score_text[0]) * int(score_text[0]))
            elif score_text[1] == "T":
                raw_score.append(int(score_text[0]) * int(score_text[0]) * int(score_text[0]))
            else:
                raw_score.append(int(score_text[0]))
        else:
            if score_text[2] == "D":
                raw_score.append(10 * 10)
            elif score_text[2] == "T":
                raw_score.append(10 * 10 * 10)
            else:
                raw_score.append(10)

    for i in range(3):
        score_text = score_array[i]
        if score_text[1] != "0":
            if len(score_text) == 3:
                if score_text[2] == "*":
                    raw_score[i] = raw_score[i] * 2
                    if i != 0:
                        raw_score[i-1] = raw_score[i-1] * 2
                if score_text[2] == "#":
                    raw_score[i] = raw_score[i] * -1
        else:
            if len(score_text) == 4:
                if score_text[3] == "*":
                    raw_score[i] = raw_score[i] * 2
                    if i != 0:
                        raw_score[i-1] = raw_score[i-1] * 2
                if score_text[3] == "#":
                    raw_score[i] = raw_score[i] * -1

    result = sum(raw_score)

    return result


print(dartgame("1S*2T*3S"))
```
- 점수가 한 자리수일 수도 있고 두 자리수일 수도 있어서 각 경우의 수를 digit으로 세어서 구분을 했다. 덕분에 코드는 매우 누더기!
- 엄청나게 그지깽깽이 같은 코드지만 정답을 생산하고 있기 때문에 오늘은 이만 만족하기로 했다^^;;

- 시간 복잡도를 줄이는 방법으로는 아래와 같은 코드를 짤 수 있다. for문을 줄이는 대신에 표현력은 약간 떨어진다.
```PYTHON
import math

def solution(input):
    input = input + "."
    score = ""
    level = ""
    special = 1
    total_score = 0
    pre_score = 0
    has_first_calc = False
    for s in input:
        if s.isdigit() or s == ".":
            if level != "":
                if special == 2 and has_first_calc:
                    pre_score *= special
                total_score += pre_score
                pre_score = math.pow(int(score), level) * special
                score = ""
                level = ""
                special = 1
            score += s
            has_first_calc = True
        elif s == "S":
            level = 1
        elif s == "D":
            level = 2
        elif s == "T":
            level = 3
        elif s == "*":
            special = 2
        elif s == "#":
            special = -1
    return total_score + pre_score

print(solution("1S2D*3T") == 37)
print(solution("1D2S#10S") == 9)
print(solution("1D2S0T") == 3)
print(solution("1S*2T*3S") == 23)
print(solution("1D#2S*3S") == 5)
print(solution("1T2D3D#") == -4)
print(solution("1D2S3T*") == 59)
```
