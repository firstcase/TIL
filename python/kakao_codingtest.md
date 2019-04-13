# 2019 카카오 공채테스트 2번 문제
http://tech.kakao.com/2018/09/21/kakao-blind-recruitment-for2019-round-1/

- 실패율 55% 문제라서 처음에 dictionary 자료의 value로 소팅하는 법을 공부하고 풀기 시작했다.

```python
import operator

def solution(N, stages):
	stagesinfo = {}
	person_in_stage = []
	for i in range(1, N+2):
		person_count = 0
		for num in stages:
			if i == num:
				person_count += 1
		person_in_stage.append(person_count)
	person_sum = sum(person_in_stage)

	for i, num in enumerate(person_in_stage):
		if i < N:
			if person_sum != 0:
				stagesinfo[i] = num / person_sum
				person_sum -= num

	sorted_stages = sorted(stagesinfo.items(), key=operator.itemgetter(1), reverse=True)
	answer = []
	for (x, y) in sorted_stages:
		answer.append(x+1)

	return answer

print(solution(5, [2,1,2,6,2,4,3,3]))
```
