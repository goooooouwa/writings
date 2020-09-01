---
layout: page
title: About
permalink: /about/
---

Shunfa Xu is a product guy who hasn't made any product yet.

[Resume (2020)]({% link resume-2020.md %})

<div class="mermaid">
  graph LR
   A --- B
   B-->C[fa:fa-ban forbidden]
   B-->D(fa:fa-spinner);
</div>

<canvas id="myChart"></canvas>
<script>
  var ctx = document.getElementById('myChart').getContext('2d');
  var chart = new Chart(ctx, {
      // The type of chart we want to create
      type: 'line',
      // The data for our dataset
      data: {
          labels: ['January', 'February', 'March', 'April', 'May', 'June', 'July'],
          datasets: [{
              label: 'My First dataset',
              backgroundColor: 'rgb(255, 99, 132)',
              borderColor: 'rgb(255, 99, 132)',
              data: [0, 10, 5, 2, 20, 30, 45]
          }]
      },
      // Configuration options go here
      options: {}
  });
</script>

