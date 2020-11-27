#!/bin/bash
curl -L -o mecab-ipadic-2.7.0-20070801.tar.gz 'http://sourceforge.net/projects/mecab/files/mecab-ipadic/2.7.0-20070801/mecab-ipadic-2.7.0-20070801.tar.gz' &&
echo 'IPAdic source zip downloaded' &&
tar zxvf mecab-ipadic-2.7.0-20070801.tar.gz &&
echo 'IPAdic source zip opened' &&
cd mecab-ipadic-2.7.0-20070801 &&
echo 'moved to mecab-ipadic-2.7.0-20070801 directory' &&
./configure --with-mecab-config=/usr/local/bin/mecab-config --prefix=/usr/local/ --with-charset=utf8 &&
echo 'configuration executed' &&
make &&
echo 'compilation done' &&
sudo make install &&
echo 'IPAdic installed' &&
ls -l /usr/local/lib/mecab/dic/ipadic


