import * as d3 from 'd3';

d3.select('body')
    .append('svg')
        .attr('width', 1920)
        .attr('height', 1080)
    .append('circle')
        .attr('cx', 1000)
        .attr('cy', 500)
        .attr('r', 50)
        .style('fill', 'blue');