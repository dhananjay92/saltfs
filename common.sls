{% if grains['kernel'] != 'Darwin' %}
python-pip:
  pkg.installed
python-dev:
  pkg.installed
{% endif %}

servo:
  user.present:
    - fullname: Tom Servo
    - shell: /bin/bash
{% if grains['kernel'] != 'Darwin' %}
    - home: /home/servo
{% else %}
    - home: /Users/servo
{% endif %}

host.servo-master:
  host.present:
    - name: servo-master
    - ip: 96.126.125.232

host.servo-linux1:
  host.present:
    - name: servo-linux1
    - ip: 66.228.48.56

host.servo-linux2:
  host.present:
    - name: servo-linux2
    - ip: 173.255.201.95

host.servo-linux3:
  host.present:
    - name: servo-linux3
    - ip: 45.79.167.177

host.servo-linux-android1:
  host.present:
    - name: servo-linux-android1
    - ip: 72.14.176.110

host.servo-mac1:
  host.present:
    - name: servo-mac1
    - ip: 208.52.161.130

host.servo-mac3:
  host.present:
    - name: servo-mac3
    - ip: 63.135.170.19

host.servo-head:
  host.present:
    - name: servo-head
    - ip: 96.126.114.185

sshkey-jack:
  ssh_auth:
    - present
    {% if grains["kernel"] != "Darwin" %}
    - user: root
    {% else %}
    - user: administrator
    {% endif %}
    - source: salt://ssh/jack.pub

sshkey-gw:
  ssh_auth:
    - present
    {% if grains["kernel"] != "Darwin" %}
    - user: root
    {% else %}
    - user: administrator
    {% endif %}
    - source: salt://ssh/gw.pub

sshkey-jdm:
  ssh_auth:
    - present
    {% if grains["kernel"] != "Darwin" %}
    - user: root
    {% else %}
    - user: administrator
    {% endif %}
    - source: salt://ssh/jdm.pub

sshkey-larsberg:
  ssh_auth:
    - present
    {% if grains["kernel"] != "Darwin" %}
    - user: root
    {% else %}
    - user: administrator
    {% endif %}
    - source: salt://ssh/larsberg.pub

sshkey-simonsapin:
  ssh_auth:
    - present
    {% if grains["kernel"] != "Darwin" %}
    - user: root
    {% else %}
    - user: administrator
    {% endif %}
    - source: salt://ssh/simonsapin.pub

sshkey-pcwalton:
  ssh_auth:
    - present
    {% if grains["kernel"] != "Darwin" %}
    - user: root
    {% else %}
    - user: administrator
    {% endif %}
    - source: salt://ssh/pcwalton.pub

sshkey-manishearth:
  ssh_auth:
    - present
    {% if grains["kernel"] != "Darwin" %}
    - user: root
    {% else %}
    - user: administrator
    {% endif %}
    - source: salt://ssh/manishearth.pub

sshkey-edunham:
  ssh_auth:
    - present
    {% if grains["kernel"] != "Darwin" %}
    - user: root
    {% else %}
    - user: administrator
    {% endif %}
    - source: salt://ssh/edunham.pub
