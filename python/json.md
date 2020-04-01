# Python에서 JSON 다루기

1. JSON 형태의 문자열과 파일 읽기
- loads)를 사용한다.
```Python
import json

data = '{"title": "Book1", "ISBN": "12345", "author": [{"name": "autho1", "age": 30}, {"name": "autho2", "age": 25}]}'
json_data = json.loads(data)

print(json_data['title'])
print(json_data['ISBN'])

for author in json_data['author']:
    print(author['name'])
    print(author['age'])
```
- JSON의 key-value 구조는 파이썬 딕셔너리로 변환되며 list는 list로 변환된다.

```python
import json
from io import StringIO

io = StringIO('{"title": "Book1", "ISBN": "12345", "author": [{"name": "autho1", "age": 30}, {"name": "autho2", "age": 25}]}')
json_data = json.load(io)

print(json_data['title'])
print(json_data['ISBN'])

for author in json_data['author']:
    print(author['name'])
    print(author['age'])
```
- 메모리 데이터를 파일처럼 읽을 수 있는 StringIO를 활용해서 파일을 읽는 예제


2. 파이썬 타입을 JSON으로 변환하기
- dumps()와 dump()를 호출하면 됨
```Python
import json

book = {'title': 'Book1', 'ISBN': '12345', 'author': [{'name': 'autho1', 'age': 30}, {'name': 'autho2', 'age': 25}]}
print(json.dumps(book))
print('')
print(json.dumps(book, indent=4))
```
- 예제의 book은 파이썬 딕셔너리 타입으로 dumps()를 호출하면 String으로 변환
- indent를 지정하지 않으면 포맷팅이 되지 않은 문자열로 표시됨. indent를 지정한 값만큼 들여쓰기를 하기 때문에 가독성이 좋아짐.

- dump()를 사용하면 파일에 저장이 가능함
```Python
import json
from io import StringIO

book = {'title': 'Book1', 'ISBN': '12345', 'author': [{'name': 'autho1', 'age': 30}, {'name': 'autho2', 'age': 25}]}
io = StringIO()
json.dump(book, io)
print(io.getvalue())
print('')

io = StringIO()
json.dump(book, io, indent=4)
print(io.getvalue())
```
