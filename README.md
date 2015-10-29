# ansible-log-courier

[Log Courier](https://github.com/driskell/log-courier) - a lightweight log shipper with Logstash integration.

[![Build Status](https://travis-ci.org/telusdigital/ansible-log-courier.svg?branch=master)](https://travis-ci.org/telusdigital/ansible-log-courier)
[![Platforms](http://img.shields.io/badge/platforms-ubuntu-lightgrey.svg?style=flat)](#)

Tunables
--------
* `log_courier_logstash_server:` (string) - The endpoint where the logstash server is located.
* `log_courier_logstash_server_port:` (string) - The port the logstash server is listening on.
* `log_courier_ssl_certificate:` (string) - The public logstash ssl certificate.
* `log_courier_ssl_certificate_path:` (string) - The path where the logstash ssl public cert is located. 

* `log_courier_nginx_enabled:` (boolean) - Is log-courier forwarding nginx logs?
* `log_courier_nginx_error_log_path:` (string) - The path where nginx error logs are found.
* `log_courier_nginx_access_log_path:` (string) - The path where nginx access logs are found.

* `log_courier_php_enabled:` (boolean) - Is log-courier forwarding php logs?
* `log_courier_php_fpm_log_path:` (string) - The path where php fpm logs are found.
* `log_courier_php_error_log_path:` (string) - The path where php error logs are found.

Dependencies
------------
None.

Example Playbook
----------------
    - hosts: servers
      roles:
         - role: telusdigital.log-courier
           log_courier_nginx_enabled: yes

License
-------
[MIT](https://tldrlegal.com/license/mit-license)

Contributors
------------
* Kinnan Kwok
