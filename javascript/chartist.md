# Chartist.js로 차트 만들기
http://gionkunz.github.io/chartist-js/examples.html#bi-polar-bar-interpolated

- STACKED BAR CHART
  + 내가 그리고 싶은 막대그래프는 합이 100%인 그래프라서 길이가 다 똑같을 예정인데, 그렇게 생긴 막대 그래프는 없어서 이 도구에 %값을 상수로 쌓는 방식으로 그려야 할 것 같다.
```javascript
new Chartist.Bar('.ct-chart', {
  labels: ['Q1', 'Q2', 'Q3', 'Q4'],
  series: [
    [800000, 1200000, 1400000, 1300000],
    [200000, 400000, 500000, 300000],
    [100000, 200000, 400000, 600000]
  ]
}, {
  stackBars: true,
  axisY: {
    labelInterpolationFnc: function(value) {
      return (value / 1000) + 'k';
    }
  }
}).on('draw', function(data) {
  if(data.type === 'bar') {
    data.element.attr({
      style: 'stroke-width: 30px'
    });
  }
});
```
