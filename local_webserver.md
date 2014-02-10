# Opsætning at lokalt udviklingsmiljø

Denne guide viser hvordan man opsætter et lokalt udviklingsmiljø på Mac OS-X Mavericks version 10.9.1.

Guide udnytter den indbyggede webserver i OS-X.

## Opsætning Apache

1. Opret Apache conf fil
 * Indtast følgende i din kommandolinje:
 ```Shell
 sudo nano /etc/apache2/users/USERNAME.conf
 ```
 Husk at erstat USERNAME med dit brugernavn (maskinnavnet)
2. Kopier følgende ind i filen og gem:
``` <Directory "/Users/USERNAME/Sites/">
Options Indexes Multiviews
AllowOverride AuthConfig Limit
Order allow,deny
Allow from all
</Directory>```