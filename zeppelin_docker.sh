docker run  -u $(id -u) -p 8088:8080 -v ${pwd}/logs:/logs -v ${pwd}/notebook:/notebook \
 -e ZEPPELIN_LOG_DIR='/logs' apache/zeppelin:0.10.1 --name zeppelin
