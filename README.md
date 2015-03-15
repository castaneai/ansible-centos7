ansible-centos7
===============
Ansible Playbooks for CentOS7

Install 
--------
```sh
$ git clone https://github.com/castaneai/ansible-centos7
$ cd ansible-centos7
$ sudo ./install.sh
```

Usage
-------
Available playbooks are in `playbooks/` dir.
Use `ansible-playbook` command to run them.

```sh
$ cd ansible-centos7/playbooks
$ ansible-playbook shell.yml
```

Playbooks
---------------

## shell.yml
The playbook for zsh + vim.

## wordpress.yml
The playbook for wordpress (+nginx, php-fpm, mysql) setup.

### nginx tips
- worker running user: `nginx`, group: `nginx`
- document_root (`{{ nginx_www_dir }}`): `/var/www/default`
- configuration file: `/etc/nginx/conf.d/default.conf`.

### php-fpm tips
- worker running user: `nginx`, group: `nginx`
- php-fpm works as unix-socket `/var/run/php-fpm/php-fpm.sock`
- unix-socket listening owner: `nginx`, group: `nginx`

### mysql tips
- using __MariaDB__ instead of MySQL because of CentOS7

### wordpress tips
- nginx configuration file: `/etc/nginx/conf.d/wordpress.conf`
