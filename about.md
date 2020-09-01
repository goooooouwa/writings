---
layout: page
title: About
permalink: /about/
---

Shunfa Xu is a product guy who hasn't made any product yet.

<div class="mermaid">
  graph LR
   A --- B
   B-->C[fa:fa-ban forbidden]
   B-->D(fa:fa-spinner);
</div>

{% vegalite %}
{
  "": "https://vega.github.io/schema/vega-lite/v4.json",
  "description": "A simple bar chart with embedded data.",
  "data": {
    "values": [
      {"a": "A", "b": 28}, {"a": "B", "b": 55}, {"a": "C", "b": 43},
      {"a": "D", "b": 91}, {"a": "E", "b": 81}, {"a": "F", "b": 53},
      {"a": "G", "b": 19}, {"a": "H", "b": 87}, {"a": "I", "b": 52}
    ]
  },
  "mark": "bar",
  "encoding": {
    "x": {"field": "a", "type": "ordinal"},
    "y": {"field": "b", "type": "quantitative"}
  }
}
{% endvegalite %}

## Resume

[Shunfa Xu's Resume (2020)]({% link resume-2020.md %})

