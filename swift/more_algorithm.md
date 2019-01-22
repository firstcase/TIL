# 더 공부해야 할 것

10가지 알고리즘에 대해서 추가로 알아보자.


## 01. 트리

사용자가 페이스북에 로그인하면 페북은 사용자 이름들이 들어있는 거대한 배열에서 로그인한 사용자 이름이 있는지를 찾는다. 이때 가장 빠른 방법은 이진 탐색을 사용하는 것이다. 하지만 새로운 사용자를 등록할 때는 문제가 있다. 새로운 이름을 넣기 위해서 배열을 다시 정렬해야 하기 때문이다.

이럴 때 이진 탐색 트리(binary search tree)라는 자료구조를 사용하면 좋다.
이진 탐색 트리에서 항목을 찾으려면 평균적으로 O(log n)시간이 걸리고 최악의 경우에 O(n)시간이 걸린다. 정렬된 배열에서는 최악의 경우에도 O(log n)시간이 걸린다. 결과적으로 정렬된 배열이 더 낫긴 하지만, 이진 탐색 트리는 항목을 삽입하거나 삭제할 때도 평균적으로 훨씬 빠르다.

이진 탐색 트리의 단점은 임의 접근(random access)를 할 수 없다는 것이다. 또 평균적인 성능이 트리가 얼마나 균형 잡혀 있는가에 따라서 달라진다. 한쪽으로 치우친 불균형한 트리의 경우 성능이 좋지 않다. 반면에 스스로 균형을 맞추는 특별한 이진탐색트리도 있다. 레드-블랙 트리가 바로 그 예이다.

데이터 베이스나 고급 자료구조에 관심이 있다면 아래와 같은 것들을 공부해볼 수 있다.
- B trees
- red-black trees
- heaps
- splay trees


## 02. 역 인덱스

해시 테이블의 키가 단어이고, 값이 그 단어가 어떤 웹페이지에 있는지를 나타낸다고 가정하자. 해시 테이블은 단어가 어디에서 나타났는지를 보여줄 수 있는 유용한 자료구조이다. 이런 자료 구조를 역 인덱스(inverted index)라고 한다. 주로 검색엔진을 만드는데 사용된다.


## 03. 퓨리에 변환

퓨리에 변환(fourier transform)은 아주 뛰어나고, 엄청나게 많은 응용 분야를 가지는 희귀한 알고리즘이다. "퓨리에 변환을 사용하면 스무디가 무슨 성분으로 구성되어 있는지 알아내는 것처럼 하나의 노래를 여러 개의 개발적인 주파수들로 분리할 수 있다"라는 비유가 있다.

퓨리에 변환은 신호를 처리하는데 아주 뛰어나다. 음악을 압축할 수도 있다. 음향 파일을 개별 음파로 분리한 다음 각 음파가 전체 노래에 어느 정도 기여하는지를 계산해서 별로 중요하지 않은 음파는 제거한다. MP3 포맷이 이런 방식으로 동작한다.

JPG포맷도 압축 포맷의 일종인데 같은 방식으로 동작한다. 지진이 발생하는 것을 예측하고 DNA를 분석하는데도 퓨리에 변환을 사용한다.


## 04. 병렬 알고리즘

옛날에는 알고리즘을 더 빨리 동작하게 만들기 위해서 몇 달만 더 기다리면 됐다. 컴퓨터 자체가 점점 빨라졌기 때문이다. 하지만 언젠가 부터 그런 시대는 끝나고 노트북에도 여러 개의 코어가 탑재되기 시작했다. 그래서 이제는 알고리즘을 더 빨리 동작시키고 싶다면 여러개의 코어에서 동시에 돌아가도록 병렬 실행을 하면 된다.

병렬 알고리즘(parallel algorithm)은 설계하기 어렵다. 또 속도 향상이 선형적이지도 않다. 한 개 코어에서 돌리던 것을 두 개 코어로 돌린다고 하더라도 마법처럼 두 배로 빨라지지는 않는다. 이렇게 되는데는 아래와 같은 이유들이 있다.

- 병렬화를 관리하는데 들어가는 부담
- 로드 밸런싱


## 05. 맵 리듀스

맵 리듀스(MapReduce algorithm)은 인기있는 분산 알고리즘이다. 아파치 하둡과 같은 오픈 소스 툴을 통해 맵리듀스 알고리즘을 사용할 수 있다.

- 분산 알고리즘이 유용한 이유
만약 수십억 혹은 수조 단위의 레코드를 가진 테이블에서 복잡한 SQL질의를 돌려야 한다고 가정해 보자. MySQL에서는 불가능하다. 이럴 때 하둡에서 맵 리듀스를 사용할 수 있다.  맵리듀스는 맵 함수와 리듀스 함수라는 두 개의 간단한 개념을 이용해서 만들어 졌다.


- 맵 함수
맵 함수는 배열을 입력으로 받아서 모든 원소에 같은 함수를 적용한다. 만약 100개의 컴퓨터가 있다면 맵 함수는 이 작업을 모든 컴퓨터에 골고루 배분한다. 그러면 한 번에 100개의 명령을 수행할 수 있고 작업이 훨씬 빨라진다.


- 리듀스 함수
리듀스 함수의 핵심은 리스트 전체의 원소를 하나의 원소로 축소하는 것이다. 맵 함수에서는 하나의 배열에서 같은 크기의 다른 배열을 얻었지만, 리듀스에서는 이 배열을 하나의 원소로 변형한다.


맵 리듀스는 데이터가 수십억 개의 레코드로 이루어져 있더라도 일반 데이터베이스에서 몇 시간이 걸리는 작업을 몇 분만에 수행할 수 있다.


## 06. 블룸 필터와 하이퍼로그로그

만약 비틀리와 같이 URL을 단축시켜주는 서비스에서 사용자가 악성코드가 있는 웹사이트로 가지 않도록 압축할 URL을 골라내야 한다고 가정하자. 악성 웹 사이트 주소를 저장해놓고, 새로운 URL 요청이 왔을 때 이 사이트가 악성 사이트 목록에 있는 것인지 확인해야 한다.

이런 경우 해시 테이블을 사용하면 작업을 빨리 할 수 있다. 해시 테이블에 대한 평균 탐색 시간은 O(1)이므로 상수시간으로 확인할 수 있다.

하지만 이 해시 테이블이 너무 크다는 문제가 있다. 인덱싱한 모든 주소를 해시 테이블에 가지고 있다면 어마어마한 저장공간이 필요하다.


- 블룸 필터
이런 때 블룸 필터(bloom filter)가 문제에 대한 해답이다. 블룸 필터는 확률론적인 자료구조이다. 거의 대부분 옳은 답을 주지만 항상 그렇지는 않다. 블룸 필터는 틀린 답을 맞다고 할 수도 있다. 하지만 맞는 답을 틀리다고 하지는 않는다.

비틀리 서비스라면 이렇게 이야기할 수 있다. "이 사이트는 악성 코드가 있을 수도 있으니 주의하세요."


- 하이퍼 로그로그
비슷한 알고리즘으로 하이퍼로그로그(HyperLogLog)라는 것이 있다. 하이퍼로그로그는 집합에 있는 똑같은 원소의 개수를 대략적으로 셀 수 있다. 정확한 값을 주지는 않지만 정확한 값을 주기 위해 필요한 메모리의 아주 일부분만 사용해서 꽤 근사한 값을 줄 수 있다.


## 07. SHA 알고리즘

SHA(보안해시알고리즘, Secure Hash Algorithm)함수도 해시 함수의 일종이다. SHA 함수는 문자열을 받아 그 문자열에 대한 해시값을 반환한다. SHA는 문자열을 받아서 문자열을 출력한다. 두 파일이 같은 지 알아보는 데도 SHA를 사용할 수 있다. 나와 친구가 가진 파일이 같은지 비교하기 위해서 두 파일의 해시값만을 비교해 보면 된다.

SHA는 원래 문자열을 밝히지 않고 두 문자열을 비교할 때도 유용하다. 예를 들어 구글은 패스워드 자체를 저장하지 않고 패스워드에 대한 SHA 해시값만을 저장한다. 사용자가 패스워드를 입력하면 구글에서는 문자열에 대한 해시값을 계산해서 데이터베이스에 저장해 놓았던 패스워드의 해시값고 비교한다.

SHA는 단방향 해시로 문자열에서 해시값을 얻을 수는 있지만, 해시값에서 문자열을 알 수는 없다. SHA 알고리즘에도 SHA-0, SHA-1, SHA-2, SHA-3 과 같은 여러가지가 있다. SHA-0과 SHA-1의 경우 알고리즘에 취약점이 있다는 것이 밝혀져있다.


## 08. 지역 민감 해싱

SHA는 지역 민감적이지 않다는 특성을 가진다. 원래 문자열에서 한 글자만 달라도 전혀 다른 해시값이 나오게 된다. 반대로 어떨 때는 지역 민감 해시(locality-sensitive hash) 함수가 필요할 수도 있다. 이럴 때는 Simhash를 사용한다. Simhash를 사용하면 문자열이 조금 바뀌었을 때 해시값도 조금만 바뀐다.

- 구글은 Simhash를 사용해서 크롤링 할 웹 페이지가 중복되었는지 판단한다.
- 선생님은 Simhash를 사용해서 학생이 작문 숙제를 인터넷에서 베꼈는지를 알 수 있다.


## 09. 디피-헬만 키 교환

디피-헬만 알고리즘(Diffie-Hellman algorithm)은 두 개의 키를 가진다. 하나는 공개 키(public key)이고 하나는 개인 키(private key)이다. 공개키는 감출 필요가 없다. 누군가 타인에게 메시지를 보내고 싶을 때는 이 공개 키를 써서 암호화를 한다. 다만 암호화된 메시지를 해독하기 위해서는 개인 키가 있어야 한다. 디피-헬만 알고리즘은 현재도 많이 사용되고 있다. 만약 암호학에 관심이 있다면 디피-헬만 알고리즘부터 시작하는 것도 좋다.


## 10. 선형 프로그래밍

선형 프로그래밍(Linear programming)은 주어진 제한 조건하에서 무언가를 최대화할 때 사용한다. 지금까지 많은 최적화 방법론을 다뤘는데, 이 방법과 선형 프로그래밍은 무슨 관계인지 궁금할 수 있다. 예를 들어, 그래프 알고리즘을 선형 프로그래밍 대신 사용할 수도 있다. 선형 프로그래밍은 훨씬 방대한 주제이고 그래프 문제는 선형 프로그래밍의 특수한 경우에 지나지 않는다.

선형 프로그래밍에서는 심플렉스 알고리즘(Simplex algorithm)이라는 것을 쓰는데 너무 복잡하기 때문에 다루지는 않는다고 저자가 말씀하심.



# 에필로그에....

아직도 공부해야 할 것이 얼마나 많이 남았는지 여러분이 느꼈기를 바란다고... 쓰여 있음... 독설 실화인가... 번역의 문제인가...