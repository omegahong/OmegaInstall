# rotate apache logs
DATE_EXT=`date +%Y_%m_%d_%H_%M_%S`
cd /home/omega/logs
mv access_log archive/access_log_$DATE_EXT
mv error_log archive/error_log_$DATE_EXT
mv mod_jk.log archive/mod_jk.log_$DATE_EXT
mv zfOmegaCms.log archive/zfOmegaCms.log_$DATE_EXT
/home/omega/apache/bin/apachectl graceful

# move over any other log files that are older than 3 days
# this will handle app logs and tomcat system logs
find . -maxdepth 1 -mtime +3  -exec mv {} archive \;