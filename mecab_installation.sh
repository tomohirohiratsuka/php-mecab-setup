#!/bin/bash
curl -L -o mecab-0.996.tar.gz 'https://drive.google.com/uc?export=download&id=0B4y35FiV1wh7cENtOXlicTFaRUE' &&
echo 'mecab source file downloaded' &&
tar zxfv mecab-0.996.tar.gz &&
echo 'mecab source zip opened' &&
cd mecab-0.996 &&
echo 'dir moved to mecab-0.966' &&
pwd &&
./configure --enable-utf8-only &&
echo 'configure executed' &&
sudo make install &&
echo 'mecab installation done' &&
mecab --version
