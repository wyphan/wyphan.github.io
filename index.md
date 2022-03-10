---
layout: home
---

{: style="text-align: center;"}
[exciting-plus](https://github.com/wyphan/exciting-plus-gpu/) | [test codes](https://github.com/wyphan/testcodes) | [tellico scripts](https://github.com/wyphan/tellico-scripts) | [old website](http://logfile-wyp.blogspot.com/)

home page
=========

This logfile mainly contains unintelligible rants, biased personal opinions, experimental notes (mostly failed ones), obscure equations (with or without derivations), and highly inefficient code snippets.

WARNING: May contain nuts.

Recent log entries:
<ul>
  {% for post in site.posts %}
    <li>
      <a href="{{ post.url }}">{{ post.title }}</a>
    </li>
  {% endfor %}
</ul>


