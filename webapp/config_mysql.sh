#!/bin/bash

__mysql_config() {
    # Hack to get MySQL up and running... I need to look into it more.
    mysql_install_db
    chown -R mysql:mysql /var/lib/mysql
}

__mysql_config

