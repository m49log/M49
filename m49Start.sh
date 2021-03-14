cd /M49
pm2 start m49.js --name m49
pm2 start bin/M49server.py --name M49server.py --interpreter python3.6 --restart-delay 180000
