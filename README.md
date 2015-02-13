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
$ ansible-playbook vagrant.yml
```

Playbooks
---------------

## vagrant.yml
The playbook for vagrant setup.

## wp.yml
The playbook for wordpress (+nginx, php-fpm, mysql) setup.

### Variables
- `mysql_root_password` : mysql root password (default: `do_not_use_weak_mysql_password`) 
- `wp_db_name`: wordpress db name in mysql (default: `wordpress`)
- `wp_db_user` : wordpress db user in mysql (default: `wordpress`)
- `wp_db_password` : wordpress db password in mysql (default: `please_change_this_password`)
- `wp_hostname` : wordpress hostname for nginx-virtualhost (default: `wp.local`)

### nginx tips
- running user: `web`, group: `web`
- document_root: `/var/www`
- virtual hosts based. default vhost directory: `/var/www/default`. configuration file: `/etc/nginx/conf.d/default.conf`.

### php-fpm tips
- running user: `web`, group: `web`
- php-fpm works as unix-socket `/var/run/php-fpm/php-fpm.sock`

### mysql tips
- using __MariaDB__ instead of MySQL because of CentOS7
- running user: `web`, group: `web`

### wordpress tips
- nginx configuration file: `/etc/nginx/conf.d/wordpress.conf`
