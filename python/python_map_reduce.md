# 람다쓰앵님의 파이썬 수업

```PYTHON
items = [2, 5, 3, 2, 4, 2, 1]

#리스트에 1을 더해서 새로운 배열을 만들어보자.
def plusone(numbers):
	new_arr = []
	for num in numbers:
		new_arr.append(num + 1)
	return new_arr

print(plusone(items))


# def inc(x):
# 	return x + 1

new_arr01 = map(lambda x: x + 1, items)

print(list(new_arr01))
#map을 사용하면 좀 더 간결하게 작성할 수 있다.

#배열의 모든 숫자를 더한 값을 출력해 보자.
def sum_items(numbers):
	result = 0
	for num in numbers:
		result = result + num
	return result

print(sum_items(items))


#파이썬3에서는 reduce가 없어져서 functools라는 애를 임포트 해줘야 한다.
#reduce를 사용하면 역시 더 간결하게 작성할 수 있다.
import functools

# def calc(result, x):
# 	return result + x

print(functools.reduce(lambda result, x: result + x, items, 0))

#배열의 짝수만 추출해서 새로운 배열을 만들어 보자.
def even_num(numbers):
	new_arr02 =  []
	for num in numbers:
		if num % 2 == 0:
			new_arr02.append(num)
	return new_arr02

print(even_num(items))

def even(result, x):
	if x % 2 == 0:
		return result + [x]
	else:
		return result

print(functools.reduce(even, items, []))

#filter를 사용하면 한줄로 간단하게 짤 수 있다. 
print(list(filter(lambda x: x % 2 == 0, items)))
```
