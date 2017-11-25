# Simple Docker Setup for an Oxid eSales installation

## Usage

`docker-compose up --build` to build the images and start up the whole cluster.
From there on a simple `docker-compose up` is all you need.
To shut it down open an second terminal and use `docker-compose down` to tear down the cluster.
To also delete all local images use `docker-compose down --rmi local`. After that you need to rebuild the images.

The html directory is a bound volume to /var/www/html in the web server image.

## Installing Oxid eShop

Enter directory of the local working copy and follow the installation from the [official Oxid V6 repository](https://github.com/OXID-eSales/oxideshop_ce) with one exception. The first (numbered 2.) step should be:
```git clone https://github.com/OXID-eSales/oxideshop_ce.git html```
to clone the oxid repository into the html directory. Then certainly the next step (3.) is ```cd html```.
The webserver document root is set to /var/www/html/source, which will be the correct location, if you follow the instructions in the Oxid repository.
Point your browser to http://localhost and follow the instructions. The database connection data is:
- Host: db
- Database: oxid (has been created from docker-compose for you)
- User: oxid
- Password: oxid

## Accessing the cluster nodes

- Webserver with PHP is under `localhost`
- phpMyAdmin runs under `localhost:8080`
- Kibana can be found under `localhost:81`

## Internals

### Installed versions

- PHP in version 7.1
- Kibana in version 4 since version 5 still has issues with running in a docker container.

### Packages installed

- vim

### PHP extensions installed

- Core
- ctype
- curl
- date
- dom
- fileinfo
- filter
- ftp
- gd (with jpeg support)
- hash
- iconv
- json
- libxml
- mbstring
- mcrypt
- mysqlnd
- mysqli
- OAuth
- openssl
- pcre
- PDO
- pdo_mysql
- pdo_pgsql
- pdo_sqlite
- pgsql
- Phar
- posix
- readline
- Reflection
- session
- SimpleXML
- soap
- SPL
- sqlite3
- standard
- tokenizer
- xdebug
- xml
- xmlreader
- xmlwriter
- yaml
- zip
- zlib
