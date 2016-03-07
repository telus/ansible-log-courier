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

# For Developers:

## Environment setup. 
* Install ruby >= 2.X
* Install docker
* `bundle install` in the current working directory

### Mac:
You might have to install docker machine

### Ubuntu:
* Update .kitchen.yml. Uncomment the following line: 
  `socket: unix:///var/run/docker.sock`

* meta/main.yml is where you list all the dependencies. When you list a dependency it runs the whole playbook you have listed.

* `default_spec.rb` contains the tests that should be run by the kitchen file. 
* To run a test go the terminal and type:
`$ kitchen test `
* To log into the docker container do the follwing:
`$ docker ps -a`
It should list all the containers. The last latest container on the list should be from kitchen test you ran.
`$ docker exec -it <name-of-container> bash`

* To clean up the container type:
`$ kitchen destroy`