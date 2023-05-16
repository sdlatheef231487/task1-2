cd
$ vim /etc/hosts
ll
ls
ll
$ vim /etc/hosts
cd
$ vim /etc/hosts
cd
ll
systemctl status httpd
systemctl enable httpd.service
echo "Hello from Server 1" > /var/www/html/index.html
curl localhost:80
echo "Hello from Server 2" > /var/www/html/index.html
curl localhost:80
echo "Hello from Server 3" > /var/www/html/index.html
curl localhost:80
cd
systemctl status httpd
systemctl enable httpd.service  

curl localhost:80
echo "Hello from Server 2" > /var/www/html/index.html
curl localhost:80
echo "Hello from Server 3" > /var/www/html/index.html
curl localhost:80
yum install haproxy
vi /etc/haproxy/haproxy.cfg
vi /etc/haproxy/haproxy.cfg
systemctl start haprpxy
vim /etc/rsyslog.conf
ls
vim /etc/rsyslog.d/haproxy.conf
curl localhost
cd
