M49 ....

**Prerequisites :**

CPU x86,x64,ARM - RAM 1G - Storage 15G 

mongodb 3.6.8 - nodejs 10.19.0 - npm 6.14.4 - Python 3.8.2 - pymongo 3.10.1

**Prerequisites installation sequence :**

apt install -y net-tools nodejs npm mongodb dos2unix python3-pip git

pip3 install pymongo

npm install pm2@latest -g


**Install M49:**

git clone https://github.com/m49log/M49.git

cd m49

npm install

python3 bin/M49install.py

npm install -g pm2

pm2 startup systemd

pm2 start m49.js --name m49

pm2 start bin/M49server.py --name M49server.py --interpreter python3.8 --restart-delay 180000

**Docker Container**
docker network create --subnet 192.168.255.0/24 m49

docker run -d --network m49 -p 443:443 -p 514:514/udp -p 1883:1883 -p 27017:27017 --name m49log mongo

docker exec -it m49log /bin/bash

apt update -y

apt upgrade -y

apt install -y net-tools nodejs npm dos2unix python3-pip git systemd

pip3 install pymongo

git clone https://github.com/m49log/M49.git

cd M49

npm install

npm audit fix

python3 bin/M49install.py

npm install pm2@latest -g

chmode -x /M49/m49Start.sh

docker exec m49log /bin/bash /M49/m49Start.sh


**HTTPS certificate:**

**M49Client:**
   Windows:

    Install the pyinstaller:

        pip install pyinstaller

    Create the M49Cient.exe:

        cd m49\bin

        pyinstaller.exe -F .\M49Client.py

    Copy the M49Client.exe to download directory     



   Mac:

   Linux:
   
**TOOLS**

    fileTosyslog.py:
        send the file lines to a syslog server, it wait the file updates that will send to the syslog server. 
         
               fileTosyslog.py SISLOG_SERVER_IP FILENAME

    Release :
    2020 06 25 first release 




**Release :**
0.3.12 First stable release
