# 카카오 2017년 공채 문제 [N진수 게임]
http://tech.kakao.com/2017/11/14/kakao-blind-recruitment-round-3/

- n진수 구하는 건 검색해서 재귀함수 하나 찾아내었다.(복붙신공)
- len(split_arr)/m 이 float 타입으로 나와서 정수로 만드느라 math 임포트함

```PYTHON
import math

def convert(data, n):
	T = "0123456789ABCDEF"
	q, r = divmod(data, n)
	if q == 0:
		return T[r]
	else:
		return convert(q, n) + T[r]


def tubesay(n, t, m, p):
	all_index = t
	raw_arr = []
	for i in range(0, 100000):
		raw_arr.append(convert(i, n))
	join_arr = "".join(raw_arr)
	split_arr = list(str(join_arr))
	turn_arr = []

	for i in range(math.floor(len(split_arr)/m)):
		if len(turn_arr) < all_index:
			turn_arr.append(split_arr[p-1+m*i])
		else:
			return "".join(turn_arr)


print(tubesay(16,16,2,2))
```
