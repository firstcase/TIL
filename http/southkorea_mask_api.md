# Public mask sales status inquiry API
https://app.swaggerhub.com/apis-docs/Promptech/public-mask-info/20200307-oas3?fbclid=IwAR0NwbXnY1qOgxSLdLOV6HobgV7wopJZHsy6x6RqjZe5yHmq73UKBad8Ezg#/StoreSale

- 네 개의 버전이 모두 GET방식으로 데이터를 불러오게 되어 있음
- 네 번째 GET/storesByAddr/json : 주소를 기준으로 해당 구 또는 동내에 존재하는 판매처 및 재고 상태 등의 판매 정보 제공.
- 정확한 주소가 입력되어야 해서 유효성 검증 필요, 다음 우편번호 API 활용할 수 있을 듯 http://postcode.map.daum.net/guide

```json
{
  "address": "서울특별시 용산구 보광동",
  "count": 9,
  "stores": [
    {
      "addr": "서울특별시 용산구  장문로  114-1 (보광동)",
      "code": "11837497",
      "created_at": "2020/03/10 21:30:00",
      "lat": 37.5266681,
      "lng": 127.0022624,
      "name": "문화약국",
      "remain_stat": "plenty",
      "stock_at": "2020/03/10 10:17:00",
      "type": "01"
    },
    {
      "addr": "서울특별시 용산구 장문로 66-1 (보광동)",
      "code": "11837551",
      "created_at": null,
      "lat": 37.5260123,
      "lng": 126.9969499,
      "name": "동광약국",
      "remain_stat": null,
      "stock_at": null,
      "type": "01"
    },
    {
      "addr": "서울특별시 용산구 보광로 46 (보광동)",
      "code": "11837632",
      "created_at": "2020/03/10 21:30:00",
      "lat": 37.5282859,
      "lng": 126.9992101,
      "name": "알파약국",
      "remain_stat": "some",
      "stock_at": "2020/03/10 10:39:00",
      "type": "01"
    },
    {
      "addr": "서울특별시 용산구 우사단로4길 42-1, 1층 (보광동)",
      "code": "11841176",
      "created_at": "2020/03/10 21:30:00",
      "lat": 37.5312488,
      "lng": 126.9990657,
      "name": "보승약국",
      "remain_stat": "empty",
      "stock_at": "2020/03/10 11:36:00",
      "type": "01"
    },
    {
      "addr": "서울특별시 용산구 보광로 18 (보광동)",
      "code": "11888512",
      "created_at": "2020/03/10 21:30:00",
      "lat": 37.5263754,
      "lng": 127.0009916,
      "name": "동오약국",
      "remain_stat": "empty",
      "stock_at": "2020/03/10 09:45:00",
      "type": "01"
    },
    {
      "addr": "서울특별시 용산구 보광로 30, 2층 (보광동)",
      "code": "12809772",
      "created_at": "2020/03/10 21:30:00",
      "lat": 37.5271965,
      "lng": 127.0003047,
      "name": "코끼리약국",
      "remain_stat": "plenty",
      "stock_at": "2020/03/10 08:59:00",
      "type": "01"
    },
    {
      "addr": "서울특별시 용산구 보광로 35 (보광동)",
      "code": "12813524",
      "created_at": "2020/03/10 21:30:00",
      "lat": 37.5272717,
      "lng": 126.9996506,
      "name": "보광프라자약국",
      "remain_stat": "empty",
      "stock_at": "2020/03/10 10:16:00",
      "type": "01"
    },
    {
      "addr": "서울특별시 용산구 장문로 94 (보광동)",
      "code": "12813681",
      "created_at": "2020/03/10 21:30:00",
      "lat": 37.5260203,
      "lng": 126.9999592,
      "name": "신세계약국",
      "remain_stat": "empty",
      "stock_at": "2020/03/10 10:44:00",
      "type": "01"
    },
    {
      "addr": "서울특별시 용산구 우사단로 2-1, 1층 104호 (보광동)",
      "code": "12815161",
      "created_at": "2020/03/10 21:30:00",
      "lat": 37.5305755,
      "lng": 126.9969244,
      "name": "신진약국",
      "remain_stat": "few",
      "stock_at": "2020/03/10 15:43:00",
      "type": "01"
    }
  ]
}
```
