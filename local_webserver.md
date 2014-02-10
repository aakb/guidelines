# Opsætning at lokalt udviklingsmiljø

_Authored by Rasmus Frey_  
_Created February 10 2014_

Denne guide viser hvordan man opsætter et lokalt udviklingsmiljø på Mac OS-X Mavericks version 10.9.1.

Guiden udnytter den indbyggede webserver i OS-X.

## Setting up Apache

1. Create Apache conf file
 Type the following in your command line:  
 
 ```
 sudo nano /etc/apache2/users/USERNAME.conf
 ```  
 
 Remember to replace USERNAME with your user name (machinename)

2. Copy the following to the file:
```
<Directory "/Users/USERNAME/Sites/">
  Options Indexes MultiViews FollowSymLinks
  AllowOverride All
  Order allow,deny
  Allow from all
</Directory>
```

  Edit the Directory path USERNAME to the appropriate username  
  Now hit Control+O to save the changes to USERNAME.conf,  
  then hit Control+X to quit out of nano

3. Next, you will start the web server with the following command:

  ```
  sudo apachectl start
  ```

4. Test that it works, Launch your favorite webbrowser and navigate to “http://127.0.0.1″ to verify the server is running, you will see an “It Works!” message.

  You can now also visit http://127.0.0.1/~USERNAME/ to see the contents of whatever is stored in the user ~/Sites/ directory.

**VIGTIGE kommandoer:**

```
sudo apachectl stop
sudo apachectl start
sudo apachectl restart
```

## Setting up Apache Virtual Hosts

1. Create a folder for log files
  
  ```
  mkdir /Users/USERNAME/apache-logs
  ```
  
2. In the folder **_/etc/apache2/extra_** you will find **_httpd-vhosts.conf_**  
  Edit this file by typing:  
  
  ```
  sudo nano /etc/apache2/extra/httpd-vhosts.conf
  ```

3. Replace the example vhosts with:  
  _if you are adding a new vhost config just add without deleting existing_

  ```
  <VirtualHost *:80>
    ServerAdmin youremail@aarhus.dk
    DocumentRoot "/Users/USERNAME/Sites/path/to/website"
    ServerName SITENAME.local
    ErrorLog "/Users/USERNAME/apache-logs/SITENAME.local-error_log"
    CustomLog "/Users/USERNAME/apache-logs/SITENAME.local-access_log" common
  </VirtualHost>
  ```
  
  Remember to replace USERNAME and SITENAME with the appropriate.
  
4. Edit main httpd.conf

  ```
  nano /etc/apache2/httpd.conf
  ```
  
  Find
  
  ```
  # Virtual hosts
  #Include /private/etc/apache2/extra/httpd-vhosts.conf
  ```
  
 and uncomment the Include statement so it looks like
 
  ```
  # Virtual hosts
  Include /private/etc/apache2/extra/httpd-vhosts.conf
  ```
  
  Save and close
  

5. Now restart your apache.

  ```
  sudo apachectl restart
  ```  
  
6. Update your hosts file.

  ```
  sudo nano /etc/hosts
  ```
  
  Add
  ```
  127.0.0.1 SITENAME.local
  ```
  
  Now you can open http://SITENAME.local in your favorite browser
  
**IMPORTANT** Steps 3, 5 and 6 must be repeated whenever you need to add a new virtual host. In step 3 you just add a new one instead of replacing, it is possible to have as many as you like.

## Setting up PHP with apache

### Using the built in PHP

1. Edit apache httpd.conf  

  ```
  sudo nano /etc/apache2/httpd.conf
  ```
  
2. Find

  ```
  #LoadModule php5_module libexec/apache2/libphp5.so
  ```
  
  Uncomment this line.
  
  ```
  LoadModule php5_module libexec/apache2/libphp5.so
  ```
  
  Save the file and exit.
  
3. Restart apache and you are ready to go.

  ```
  sudo apachectl restart
  ```
  
### Using PHP 5.3, this is a good idea when working with Drupal.

**IMPORTANT!** You need brew to perform this task, http://brew.sh/

1. Add a few repros to brew.

  ```
  brew tap homebrew/dupes
  brew tap josegonzalez/homebrew-php
  ```
  
2. Install PHP and extensions.

  ```
  brew install php53 php53-mcrypt php53-memcache php53-xdebug
  ```
  
3. Edit apache httpd.conf

  ```
  sudo nano /etc/apache2/httpd.conf
  ```
  
  Add the following to LoadModule section, a good idea is to place it after the existing php5_module load.
  
  ```
  LoadModule php5_module /usr/local/opt/php53/libexec/apache2/libphp5.so
  ```
  
  **Remember** to comment out the existing if you have it enabled.
  
  Save and exit.
  
4. Restart apache and you are ready to go.

  ```
  sudo apachectl restart
  ```
  
## Setting up MySQL

**IMPORTANT!** You need brew to perform this task, http://brew.sh/

1. Install MySQL

  ```
  brew install mysql
  ```
  
2. Make it more secure

  ```
  mysql_secure_installation
  ```
  
3. Start MySQL server

  ```
  mysql.server start
  ```
  
You now have a MySQL database running.

**Remember** You have to start MySQL everytime you reboot your computer.

**TIP!** Install the app called [Sequel Pro](http://www.sequelpro.com/) it makes it easy to maintain your databases.

  