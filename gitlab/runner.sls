{% from "gitlab/map.jinja" import runner with context %}
{%- if runner.enabled %}

gitlab-runner_dirs:
  file.directory:
  - names:
    - /srv/gitlab-runner/config
  - makedirs: true
  - group: root
  - user: root

/srv/gitlab-runner/config/config.yml:
  file.managed:
  - source: salt://gitlab/conf/runner_config.yml
  - template: jinja

{%- endif %}
