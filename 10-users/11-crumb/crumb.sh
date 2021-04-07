curl -u "admin:master" 'http://192.168.56.4:8080/crumbIssuer/api/xml?xpath=concat(//crumbRequestField,":",//crumb)'
curl -u "admin:master" -H "$crumb" -X POST http://192.168.56.4:8080/job/tarea1/build

