crumb=$(curl -u "admin:master" -s 'http://192.168.56.4:8080/crumbIssuer/api/xml?xpath=concat(//crumbRequestField,":",//crumb)') 
echo $crumb
curl -u "admin:master" -H "$crumb" -X POST http://192.168.56.4:8080/job/tarea1/ 

