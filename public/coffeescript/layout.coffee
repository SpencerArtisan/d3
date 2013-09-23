$ ->
  draw_graph = (graph_div) -> 
    themes = [
      {x: 140, y: 70, label: "Code"},
      {x: 258, y: 116, label: "London"}
      ]
    links = [
      {x: 210, y: 20, label: "Ruby Tapas", link: "http://www.rubytapas.com"}
    ]
    lines = [
      {x1: 140, y1: 70, x2: 210, y2: 20}
    ]


    svg = d3.select("body").append("svg").attr("width", 400).attr("height", 200)
    svg.selectAll("lines")
      .data(lines)
      .enter()
      .append("line")
      .attr("x1", (d) -> d.x1)
      .attr("x2", (d) -> d.x2)
      .attr("y1", (d) -> d.y1)
      .attr("y2", (d) -> d.y2)

    svg.selectAll("circle")
       .data(themes)
       .enter()
       .append("circle")
       .attr("class", "theme")
       .attr("r", 50)
       .attr("cx", (d) -> d.x)
       .attr("cy", (d) -> d.y)
    svg.selectAll("text")
       .data(themes)
       .enter()
       .append("text")
       .attr("class", "theme")
       .text((d) -> d.label)
       .attr("x", (d) -> d.x - this.getBBox().width / 2)
       .attr("y", (d) -> d.y + 6)

    svg.selectAll("linkcircle")
       .data(links)
       .enter()
       .append("circle")
       .attr("class", "link")
       .attr("r", 5)
       .attr("cx", (d) -> d.x)
       .attr("cy", (d) -> d.y)
    svg.selectAll("links")
       .data(links)
       .enter()
       .append("text")
       .attr("class", "link")
       .text((d) -> d.label)
       .attr("x", (d) -> d.x + 8)
       .attr("y", (d) -> d.y + 4)
       .attr("onclick", (d) -> "window.open('#{d.link}')")

  window.onload = -> 
    graph_div = $("#graph")
    draw_graph(graph_div)

