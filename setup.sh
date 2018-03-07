#composer create-project --no-dev oxid-esales/oxideshop-project html dev-b-6.0-ce
composer create-project oxid-esales/oxideshop-project html dev-b-6.0-ce
(cd html; chmod -R 777 source/config.inc.php source/.htaccess source/tmp/ source/log/ source/out/pictures/ source/out/media/ source/export)