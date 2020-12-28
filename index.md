---
layout: home
---

home page
=========

Recent log entries:
<ul>
  {% for post in site.posts %}
    <li>
      <a href="{{ post.url }}">{{ post.title }}</a>
    </li>
  {% endfor %}
</ul>


[exciting-plus](https://github.com/wyphan/exciting-plus-gpu/) | [test codes](https://github.com/wyphan/testcodes) | [tellico scripts](https://github.com/wyphan/tellico-scripts) | [old website](http://logfile-wyp.blogspot.com/)

[privacy policy](privacy) | [terms of service](tos)
