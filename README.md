This is a docker compose to run Wordpress in VPS server, combined with PHP, Nginx, MySQL and https certification renewal scripts (lego). I built this for my study purpose but feel free to use it.

How to use  
(1) prepare .env file  
   use sample.env for your reference

(2) change "wd.conf" under /web  
   modify [yourdomain.com] in the following parameters 
      ssl_certificate /lego/certificates/_.yourdomain.com.crt;
      ssl_certificate_key /lego/certificates/_.yourdomain.com.key;
      server_name yourdomain.com;  
         
(3) run  
  docker-compose build  
  docker-compose up -d  

  
