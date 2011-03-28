pid=`ps -ef | grep SidebarScreenlet | grep -v grep | awk '{print $2}'`
kill -9 $pid
