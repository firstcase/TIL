# 해시 테이블

## 1. 해시 함수의 소개
당신이 식료품 가게에서 일하고 있다고 가정하자. 누군가 식료품 가격을 물어보면 장부에서 가격을 찾아야 한다. 만약 소팅이 되어있지 않은 장부에서 가격을 찾으려면 O(n)시간이 걸린다. 만약 장부가 알파벳 순으로 되어 있다면 이진탐색을 써사 식료품 가격을 찾을 수 있고 이 경우 O(log n) 시간이 걸린다.

하지만 아무리 장부가 정리되어 있더라도 출납업무를 하는데 계속 장부를 봐야한다면 힘이 든다. 모든 물건의 이름과 가격을 외우고 있는 동료가 있다면 그 동료에게 물어보면 바로 대답을 해줄 것이다. 그런 동료를 고용하기 위해서는 어떻게 해야할까? 바로 그런 일을 하는 것이 해시 함수(hash function)이다.


## 2. 해시 함수
해시 함수는 문자열을 받아서 숫자를 반환하는 함수이다. 해시 함수는 다음과 같은 요건을 갖춰야 한다.

- 해시 함수에는 일관성이 있어야 한다. 만약 "apple"을 넣었을 때 "4"를 반환한다면 "apple"을 넣을 때마다 반환되는 값은 항상 "4"이어야 한다.

- 다른 단어가 들어가면 다른 숫자가 나와야 한다. 예를 들어 어떤 단어를 넣어도 "1"만 나오면 좋은 해시 함수가 아니다.

해시 함수와 배열을 합치면 해시 테이블(hash table)이라는 자료구조를 얻을 수 있다. 배열과 리스트는 직접 메모리를 할당하지만, 해시 테이블은 해시 함수를 사용해서 더 총명하게 어디에 원소를 저장할지 결정한다.

해시 테이블은 해시 맵(hash maps), 맵(maps), 딕셔너리(dictionaries), 연관 배열(associative arrays)이라는 이름으로도 알려져 있다.


## 3. 해시 테이블을 사용하는 예

### 해시 테이블로 조회하기
- 전화번호부 : 어떤 것을 다른 것과 연관시키고자 할 때, 무언가를 찾아보고자 할 때
- 웹 사이트 주소를 ip 주소로 번역할 때

### 중복된 항목을 방지하기
- 투표소 관리를 할 때 : 누가 투표소로 오면 투표를 했는지 아닌지를 확인해서 알려준다.
만약 투표한 사람의 이름을 리스트에 저장한다면 리스트 전체에 대해 단순 탐색을 반복하기 때문에 굉장히 느려진다.

### 해시 테이블을 캐시로 사용하기
정보를 다시 계산하지 않고 저장했다가 알려주는 것이 캐싱(cashing)이다.
캐싱은 작업 속도를 올리는 일반적인 방법이다. 모든 대형 웹사이트는 캐싱을 사용한다. 그리고 그 자료는 해시 테이블에 저장된다.

정리하자면 해시 테이블을 아래의 세 가지 장점을 갖는다.
- 어떤 것과 다른 것 사이의 관계를 모형화할 수 있다.
- 중복을 막을 수 있다.
- 서버에게 작업을 시키지 않고 자료를 캐싱할 수 있다.


## 4. 충돌
두 개의 키가 같은 공간에 할당되는 것을 충돌(collision)이라고 한다.

충돌을 해결하는 방법은 여러가지가 있는데, 가장 간단한 방법은 같은 공간에 여러 개의 키를 연결 리스트로 만들어 넣는 것이다. 하지만 같은 공간에 계속해서 연결 리스트로 항목을 만들면 해시 테이블이 느려진다. 그렇기 때문에 좋은 해시 함수는 충돌을 최소화한다.


## 5. 성능
평균적인 경우 해시 테이블은 모든 항목에 대해 O(1)시간이 걸린다. O(1)은 상수시간(constant time)이라고 불린다. 상수 시간은 해시 테이블의 크기에 상관없이 항상 똑같은 시간이 걸린다는 의미이다.

그렇게 하려면 충돌을 피해야 하는데 충돌을 피하려면 아래의 두가지가 필요하다.
- 낮은 사용률 : 보통은 사용률이 0.7보다 커지면 리사이징한다.
- 좋은 해시 함수 : 배열에 값을 골고루 분포시키는 함수 
