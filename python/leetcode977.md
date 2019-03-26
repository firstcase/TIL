# leetcode977번 풀기!

문제는 swift보다 python으로 풀면 편하다.... 하하
배열을 받아서 항목을 제곱한 뒤, 소팅된 배열을 생성하는 문제를 풀어보았다.

```python
def sortedSquares(array):
	editArray = []
	for num in array:
		editArray.append(num*num)
	editArray.sort()
	return editArray
```
처음에는 절대값 배열을 소팅해서 만들고, 그 다음 제곱을 시키는 반복문을 한 번 더 돌려서 시간복잡도 2n으로 문제를 풀었다. 리팩토링해서 시간복잡도를 n으로 줄여보았다.
