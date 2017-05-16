{% from "gitlab/map.jinja" import runner with context %}
{%- if runner.enabled %}

/srv/gitlab-runner/config/config.yml:
  file.managed:
  - source: salt://gitlab/conf/runner_config.yml
  - template: jinja

{%- endif %}
