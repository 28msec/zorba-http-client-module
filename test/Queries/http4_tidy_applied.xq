import module namespace httpc = "http://expath.org/ns/http-client";
declare namespace http = "http://expath.org/ns/http-client";

local variable $http-res1 :=
httpc:send-request(
  <http:request href="http://www.zorba-xquery.com/http-client/example_com.html" method="GET" 
               auth-method="Basic"
               send-authorization="true"
               username="zorba"
               password="blub"/>);

local variable $http-res2 :=
httpc:send-request(
  <http:request href="http://www.zorba-xquery.com/http-client/example_com.html" method="GET"
               override-media-type="text/plain"
               auth-method="Basic"
               send-authorization="true"
               username="zorba"
               password="blub"/>);

$http-res1[2],
$http-res2[2]
