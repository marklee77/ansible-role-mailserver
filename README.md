marklee77.mailserver
====================

Mail server with smtp/imap/pop, SSL logins, spam and virus filtering.

This playbook requires Ubuntu trusy, so cannot currently be tested using travis.

Requirements
------------

Requires access to a mysql database. The solr search plugin requires that 
tomcat6 be installed.

Role Variables
--------------

- mailserver_sqlgrey_mysql_password: mysql password for sqlgrey user. Set to a 
    random value by default.
- mailserver_dspam_mysql_password: mysql password for dspam user. Set to a 
    random value by default.
- mailserver_dspam_secret: shared secret for dspam server and client. Set to a 
    random value by default.

- mailserver_domain: Default mailserver domain. Set to "localdomain" by default.
- mailserver_fqdn: Mailserver fully qualified domain name. Set to 
    "localhost.localdomain" by default
- mailserver_subdomain_list: List of valid email subdomains, set to www, ftp, 
    and mail by default.
- mailserver_proxy_interfaces: Any proxy interfaces. Set to no value by default.
- mailserver_ssl_cert_file: SSL certificate for smtp/submission. Set to the 
    automatically generated /etc/ssl/certs/ssl-cert-snakeoil.pem by default.
- mailserver_ssl_key_file: SSL key for smtp/submission. Set to the automatically 
    generated /etc/ssl/private/ssl-cert-snakeoil.key by default.
- mailserver_rbl_list: Realtime blackhole list. Set to zen.spamhaus.org, 
    psbl.surriel.com, and dnsbl.sorbs.net by default.
- mailserver_rhsbl_list: Right hand side blackhole list. Set to rhsbl.sorbs.net 
    by default.
mailserver_aliases: Mailserver aliases to add to system list. Set to no values 
    by default.
mailserver_maildir_name: Name of maildir directory. Set to "Maildir" by default.

Example Playbook
-------------------------

    - hosts: all
      sudo: True
      roles:
        - marklee77.mailserver

License
-------

GPLv2

Author Information
------------------

http://stillwell.me
