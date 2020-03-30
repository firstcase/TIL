# mysql에 JSON타입으로 데이터 저장하기

- 이 방법은 코끼리를 냉장고에 넣는 방법으로 다수의 개발자들에게 좋지 않은 방법으로 평가됨
- 하지만 나는 빨리 하고 싶고 개발자가 아니므로 이 방법을 선택함
- 참고 문서 https://dev.mysql.com/doc/refman/5.7/en/json-functions.html

1. JSON 데이터 타입 사용하기
- MySQL ver.5.7.8부터 사용가능함
```mysql
mysql> CREATE TABLE t1 (jdoc JSON);
Query OK, 0 rows affected (0.20 sec)

mysql> INSERT INTO t1 VALUES('{"key1": "value1", "key2": "value2"}');
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO t1 VALUES('[1, 2,');
ERROR 3140 (22032) at line 2: Invalid JSON text:
"Invalid value." at position 6 in value (or column) '[1, 2,'.
```
- 만약 정확하지 않은 데이터를 입력하면 에러가 난다.


2. JSON 데이터를 만드는 데 사용하는 함수

- JSON_TYPE() : JSON 데이터의 타입을 알려주는 함수다. 결과값은 MySQL의 String 형태로 보여준다.
- JSOV_ARRAY : 문자열을 JSON ARRAY 타입으로 변환해서 입력할 수 있게 해준다.
```mysql
mysql> SELECT JSON_ARRAY('a', 1, NOW());
+----------------------------------------+
| JSON_ARRAY('a', 1, NOW())              |
+----------------------------------------+
| ["a", 1, "2015-07-27 09:43:47.000000"] |
+----------------------------------------+

mysql> insert into test_model values('xyz','["programmable","fan","ac","furnace"]')
```
- JSON_OBJECT : 입력하는 입력내용을 key/value 형태의 JSON데이터로 만들 수 있다.
```mysql
mysql> SELECT JSON_OBJECT('key1', 1, 'key2', 'abc');
+---------------------------------------+
| JSON_OBJECT('key1', 1, 'key2', 'abc') |
+---------------------------------------+
| {"key1": 1, "key2": "abc"}            |
+---------------------------------------+
```

3. JSON데이터를 추출하는데 사용하는 함수
- JSON_EXTRACT
```mysql
mysql> SELECT JSON_EXTRACT('{"id": 14, "name": "Aztalan"}', '$.name');
+---------------------------------------------------------+
| JSON_EXTRACT('{"id": 14, "name": "Aztalan"}', '$.name') |
+---------------------------------------------------------+
| "Aztalan"                                               |
+---------------------------------------------------------+
```
```mysql
mysql> SELECT JSON_EXTRACT('{"a": 1, "b": 2, "c": [3, 4, 5]}', '$.*');
+---------------------------------------------------------+
| JSON_EXTRACT('{"a": 1, "b": 2, "c": [3, 4, 5]}', '$.*') |
+---------------------------------------------------------+
| [1, 2, [3, 4, 5]]                                       |
+---------------------------------------------------------+
mysql> SELECT JSON_EXTRACT('{"a": 1, "b": 2, "c": [3, 4, 5]}', '$.c[*]');
+------------------------------------------------------------+
| JSON_EXTRACT('{"a": 1, "b": 2, "c": [3, 4, 5]}', '$.c[*]') |
+------------------------------------------------------------+
| [3, 4, 5]                                                  |
+------------------------------------------------------------+
```
