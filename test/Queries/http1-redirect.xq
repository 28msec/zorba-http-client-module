import module namespace http = 'http://expath.org/ns/http-client';

local variable $http-res-with := 
http:send-request(<http:request href="http://zorbatest.lambda.nu:8080/remotequeue" method="HEAD" follow-redirect="true"/>);

local variable $http-res-without := 
http:send-request(<http:request href="http://zorbatest.lambda.nu:8080/remotequeue" method="HEAD" follow-redirect="false"/>);

let $status-with := $http-res-with[1]/@status/data(.)
let $status-without := $http-res-without[1]/@status/data(.)
return
  if ($status-without eq 301) then
    $status-with
  else "failed"
