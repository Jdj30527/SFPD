HorizontalBarGraph = function(el, series) {
  this.el = d3.select(el);
  this.series = series;
};

HorizontalBarGraph.prototype.draw = function() {
  var x = d3.scale.linear()
    .domain([0, d3.max(this.series, function(d) { return d.value })])
    .range([0, 100]);

  var segment = this.el
    .selectAll(".horizontal-bar-graph-segment")
      .data(this.series)
    .enter()
      .append("div").classed("horizontal-bar-graph-segment", true);

  segment
    .append("div").classed("horizontal-bar-graph-label", true)
      .text(function(d) { return d.label });

  segment
    .append("div").classed("horizontal-bar-graph-value", true)
      .append("div").classed("horizontal-bar-graph-value-bar", true)
        .style("background-color", function(d) { return d.color })
        .text(function(d) { return d.inner_label ? d.inner_label : "" })
        .transition()
          .duration(1000)
          .style("min-width", function(d) { return x(d.value) + "%" });

};

var graph = new HorizontalBarGraph('#my-graph', [
  {label: "Medical Incidents", inner_label: "6,791 calls", value: 6791, color: "#6ea6df" },
  {label: "Alarms",  inner_label: "1,061 calls",   value: 1061,  color: "#84c26d" },
  {label: "Structure Fire",  inner_label: "1,029 calls",   value: 1029,  color: "#e17a69" },
  {label: "Traffic Collision", inner_label: "410 calls", value: 410, color: "#7c6dc2"},
  {label: "Outside Fire", inner_label: "144 calls", value: 144, color: "#c2bf6d"},
  {label: "Other", inner_label: "129 calls", value: 129, color: "#c49e79"},
  {label: "Citizens Assist", inner_label: "114 calls", value: 114, color: "#79b0c4"},
  {label: "Gas Leak", inner_label: "86 calls", value: 86, color: "#c26db0"},
    {label: "Train / Rail Incident", inner_label: "55 calls", value: 55, color: "#6dc2ae"},
  {label: "Water Rescue", inner_label: "54 calls", value: 54, color: "#c263d80"},
    {label: "Vehicle Fire", inner_label: "45 calls", value: 45, color: "#c2ab6d"},
      {label: "Elevator / Escalator Rescue", inner_label: "23 calls", value: 23, color: "#6dc278"},
  {label: "Electrical Hazard", inner_label: "21 calls", value: 21, color: "#8bede6"},
    {label: "Smoke Investigation", inner_label: "15 calls", value: 15, color: "#ed8bdb"},
    {label: "Fuel Spill", inner_label: "10 calls", value: 10, color: "#ed8b8b"},
    {label: "Odor", inner_label: "10 calls", value: 10, color: "#6dc2ae"},
    {label: "HazMat", inner_label: "3 calls", value: 3, color: "#6dc2ae"}
]);
graph.draw();

function sliceSize(dataNum, dataTotal) {
  return (dataNum / dataTotal) * 360;
}
function addSlice(sliceSize, pieElement, offset, sliceID, color) {
  $(pieElement).append("<div class='slice "+sliceID+"'><span></span></div>");
  var offset = offset - 1;
  var sizeRotation = -179 + sliceSize;
  $("."+sliceID).css({
    "transform": "rotate("+offset+"deg) translate3d(0,0,0)"
  });
  $("."+sliceID+" span").css({
    "transform"       : "rotate("+sizeRotation+"deg) translate3d(0,0,0)",
    "background-color": color
  });
}
function iterateSlices(sliceSize, pieElement, offset, dataCount, sliceCount, color) {
  var sliceID = "s"+dataCount+"-"+sliceCount;
  var maxSize = 179;
  if(sliceSize<=maxSize) {
    addSlice(sliceSize, pieElement, offset, sliceID, color);
  } else {
    addSlice(maxSize, pieElement, offset, sliceID, color);
    iterateSlices(sliceSize-maxSize, pieElement, offset+maxSize, dataCount, sliceCount+1, color);
  }
}
function createPie(dataElement, pieElement) {
  var listData = [];
  $(dataElement+" span").each(function() {
    listData.push(Number($(this).html()));
  });
  var listTotal = 0;
  for(var i=0; i<listData.length; i++) {
    listTotal += listData[i];
  }
  var offset = 0;
  var color = [
    "cornflowerblue", 
    "olivedrab", 
    "tomato", 
    "crimson", 
    "purple", 
    "turquoise", 
    "forestgreen", 
    "navy", 
    "gray"
  ];
  for(var i=0; i<listData.length; i++) {
    var size = sliceSize(listData[i], listTotal);
    iterateSlices(size, pieElement, offset, i, 0, color[i]);
    $(dataElement+" li:nth-child("+(i+1)+")").css("border-color", color[i]);
    offset += size;
  }
}
createPie(".pieID.legend", ".pieID.pie");


Vue.component('pie-chart', {
  extends: VueChartJs.Pie,
 mounted () {
    this.renderChart({
      labels: ['Truck', 'Chief', 'Engine', 'Investigation', 'Medic', 'Private', 'Rescue Captain', 'Rescue Squad', 'Support'],
      datasets: [
        {
          backgroundColor: [
            '#41B883',
            '#E46651',
            '#00D8FF',
            '#DD1B16',
            '#6ea6df',
            '#84c26d',
            '#e17a69',
            '#7c6dc2',
            '#c2bf6d'
          ],
          data: [981, 726, 3589, 11, 3066, 1154, 272, 168, 33]
        }
      ]
    }, {
      responsive: true, 
      maintainAspectRatio: false,
      pieceLabel: {
        mode: 'percentage',
        precision: 1
      }
    })
 }
  
})

var vm = new Vue({
  el: '.app',
  data: {
    show: false,
    message: {
      labels: ['January', 'February', 'March', 'April', 'May', 'June', 'July'],
      datasets: [
        {
          label: 'Data One',
          backgroundColor: '#f87979',
          data: [40, 39, 10, 40, 39, 80, 40]
        }
      ]
    }
  },
  
  mounted () {
    //setInterval(() => {
      //this.fillData()
//    },  5000)
  }
})


var chart = AmCharts.makeChart( "chartdiv", {
  "type": "pie",
  "theme": "light",
  "dataProvider": [ {
    "priority": "Equal",
    "count": 7792
  }, {
    "priority": "Increase",
    "count": 134
  }, {
    "priority": "Decrease",
    "count": 234
  }, ],
  "valueField": "count",
  "titleField": "priority",
   "balloon":{
   "fixedPosition":true
  },
  "export": {
    "enabled": true
  }
} );