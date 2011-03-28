pid=`ps -ef | grep SearchScreenlet | grep -v grep | awk '{print $2}'`
kill -9 $pid
