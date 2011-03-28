pid=`ps -ef | grep SlideshowScreenlet | grep -v grep | awk '{print $2}'`
kill -9 $pid
