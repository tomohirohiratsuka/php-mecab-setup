#!/bin/bash
git clone https://github.com/tomohirohiratsuka/php-mecab.git &&
echo 'php-mecab source cloned from github' &&
cd php-mecab/mecab &&
pwd &&
phpize &&
echo 'phpize done module created' &&
./configure --with-php-config=/usr/local/bin/php-config --with-mecab=/usr/local/bin/mecab-config &&
echo 'configuration executed' &&
make &&
echo 'compilation done' &&
make test &&
echo 'test done' &&
sudo make install &&
echo 'php_mecab installation done'
