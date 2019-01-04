# 다익스트라 알고리즘

## 1. 너비우선탐색 vs 다익스트라  알고리즘

너비우선탐색은 가장 적은 수의 구간을 가지는 경로를 찾아낸다. 만약 구간마다 값을 가지고 있어서 가장 빠른 경로를 찾고 싶다면 다익스트라 알고리즘을 써야 한다.


## 2. 다익스트라 알고리즘

다익스트라 알고리즘은 4단계로 이루어진다.
- 가장 '가격'이 싼 정점을 찾는다. 가장 가격이 싼 정점이란 도달하는 데 시간이 가장 적게 걸리는 정점을 말한다.
- 이 정점의 이웃 정점들의 가격을 조사한다.
- 그래프 상의 모든 정점에 대해 이런 일을 반복한다.
- 최종 경로를 계산한다.


## 3. 용어 설명

- 가중치(weight) : 그래프의 각 간선이 갖는 숫자
- 가중 그래프(weighted graph) : 가중치를 갖는 그래프
- 균일 그래프(unweighted graph) : 가중치가 없는 그래프
- 사이클(cycle) : 그래프가 어떤 정점에서 출발해서 한 바퀴를 돌아 같은 정점에서 끝난다는 의미

## 4. 간선의 가중치가 음수인 경우

일단 어떤 정점을 처리하면 그 정점에 도달하는 더 싼 경로는 존재하지 않아야 하는데, 간선 가중치가 음수일 경우 더 싼길이 발견된다. 그래서 음의 가중치를 가진 간선이 있으면 다익스트라 알고리즘을 사용할 수 없다. 만약 음의 가중치를 가진 그래프에서 최단 경로를 찾고 싶다면 벨만-포트 알고리즘(bellman-ford algorithm)을 사용하면 된다.


## 5. 구현
다익스트라 알고리즘을 swift로 구현해보았다.
책은 파이썬으로 구현을 했는데,
이걸 swift로 구현하기 위해서는 엄청난 느낌표질(!!!!!)을 해야한다.ㅠㅠㅠㅠ
두 번 다시 swift로 다익스트라 구현하지 않겠다는 다짐을 한 밤...

```swift
var graph : [String : [String : Float]] = ["start" : ["a" : 6, "b" : 2],
             "a" : ["fin" : 1],
             "b" : ["a" : 3, "fin" : 5],
             "fin" : [:] ]

var infinity = Float.infinity
var costs = ["a" : 6, "b" : 2, "fin" : Float.infinity]
var parents = ["a" : "start", "b" : "start" ]
var processed = [String]()

func findLowestCostNode (_ costs : [String : Float]) -> String? {
    var lowestCost = Float.infinity
    var lowestCostNode : String? = nil
    for node in costs.keys {
        var cost = costs[node]!
        if cost < lowestCost && !processed.contains(node) {
            lowestCost = cost
            lowestCostNode = node
        }
    }
    return lowestCostNode
}


func dijkstra() {
    var node = findLowestCostNode(costs)
    while node != nil {
        var cost = costs[node!]!
        var neighbors = graph[node!]!
        for i in neighbors.keys {
            var newCost = cost + neighbors[i]!
            if costs[i]! > newCost {
                costs[i] = newCost
                parents[i] = node
            }
        }
        processed.append(node!)
        node = findLowestCostNode(costs)
    }
    print(parents)
    print(costs)
}
```
