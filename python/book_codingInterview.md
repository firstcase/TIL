# 면접대비문제 1.5

같은 문자가 연속으로 반복될 경우, 그 횟수를 사용해서 문자열을 압축하는 메서드를 구현하라.
```python
string = "aabccccccccaaa"

def sumString(x):
	s = set(x)
	answer = ""
	if len(s) == len(x):
		return x
	else:
		start = 0
		finish = 0
		answerInt = 0
		for i in range(len(x)-1):
			if x[i] != x[i+1]:
				finish = i + 1
				answerInt = finish - start
				answer = answer + str(x[i]) + str(answerInt)
				start = finish
		answer = answer + str(x[len(x)-1]) + str(len(x)-start)
	return answer


print (sumString(string))
```
