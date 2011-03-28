pid=`ps -ef | grep ClockScreenlet | grep -v grep | awk '{print $2}'`
kill -9 $pid
