wget http://pear.zero.mq/get/zmq-1.0.3.tgz
tar -xzf zmq-1.0.3.tgz
sh -c "cd zmq-1.0.3 && phpize && ./configure && make && sudo make install"
echo "extension=zmq.so" >> `php --ini | grep "Loaded Configuration" | sed -e "s|.*:\s*||"`
