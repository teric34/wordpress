This is a docker compose to run Wordpress in VPS server, combined with PHP, Nginx, MySQL and https certification renewal scripts (lego). I built this for my study purpose but feel free to use it.

How to use  
(1) prepare .env file under ./  
   use sample.env for your reference

(2) change "we.conf" under ./  
   server_name localhost.masa-nakajima.com; -> server_name www.yourdomain.com;  
         
(3) run  
  docker-compose build  
  docker-compose up -d  

  
