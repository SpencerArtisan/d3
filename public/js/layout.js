// Generated by CoffeeScript 1.3.3
(function() {

  $(function() {
    var draw_graph;
    draw_graph = function(graph_div) {
      var lines, links, svg, themes;
      themes = [
        {
          x: 140,
          y: 70,
          label: "Code"
        }, {
          x: 258,
          y: 116,
          label: "London"
        }
      ];
      links = [
        {
          x: 210,
          y: 20,
          label: "Ruby Tapas",
          link: "http://www.rubytapas.com"
        }
      ];
      lines = [
        {
          x1: 140,
          y1: 70,
          x2: 210,
          y2: 20
        }
      ];
      svg = d3.select("body").append("svg").attr("width", 400).attr("height", 200);
      svg.selectAll("lines").data(lines).enter().append("line").attr("x1", function(d) {
        return d.x1;
      }).attr("x2", function(d) {
        return d.x2;
      }).attr("y1", function(d) {
        return d.y1;
      }).attr("y2", function(d) {
        return d.y2;
      });
      svg.selectAll("circle").data(themes).enter().append("circle").attr("class", "theme").attr("r", 50).attr("cx", function(d) {
        return d.x;
      }).attr("cy", function(d) {
        return d.y;
      });
      svg.selectAll("text").data(themes).enter().append("text").attr("class", "theme").text(function(d) {
        return d.label;
      }).attr("x", function(d) {
        return d.x - this.getBBox().width / 2;
      }).attr("y", function(d) {
        return d.y + 6;
      });
      svg.selectAll("linkcircle").data(links).enter().append("circle").attr("class", "link").attr("r", 5).attr("cx", function(d) {
        return d.x;
      }).attr("cy", function(d) {
        return d.y;
      });
      return svg.selectAll("links").data(links).enter().append("text").attr("class", "link").text(function(d) {
        return d.label;
      }).attr("x", function(d) {
        return d.x + 8;
      }).attr("y", function(d) {
        return d.y + 4;
      }).attr("onclick", function(d) {
        return "window.open('" + d.link + "')";
      });
    };
    return window.onload = function() {
      var graph_div;
      graph_div = $("#graph");
      return draw_graph(graph_div);
    };
  });

}).call(this);
