import module namespace httpc = "http://expath.org/ns/http-client";
declare namespace http = "http://expath.org/ns/http-client";

variable $http-res1 :=
httpc:send-request(
  <http:request href="http://zorbatest.28.io:8080/http-test-data/basic-auth/example_com.html" method="GET" 
               auth-method="Basic"
               send-authorization="true"
               username="zorba"
               password="blub"/>);

variable $http-res2 :=
httpc:send-request(
  <http:request href="http://zorbatest.28.io:8080/http-test-data/basic-auth/example_com.html" method="GET"
               override-media-type="text/plain"
               auth-method="Basic"
               send-authorization="true"
               username="zorba"
               password="blub"/>);

$http-res1[2],
$http-res2[2]
