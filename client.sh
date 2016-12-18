#! /bin/bash
echo 01 | nc 127.0.0.1 8086
nc 127.0.0.1 8080 > /tmp/execute.sh
chmod +x /tmp/execute.sh
bash /tmp/execute.sh
