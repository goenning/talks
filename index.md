---
layout: home
---

{% for conference in site.conferences %}
<p>
    <a href="{{ conference.url }}">{{ conference.name }}</a>
    {% for tag in conference.tags %}
      <code>{{ tag }}</code>
    {% endfor %}
</p>
{% endfor %}