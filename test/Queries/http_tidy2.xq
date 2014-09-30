import module namespace httpc = "http://expath.org/ns/http-client";

declare namespace http = "http://expath.org/ns/http-client";

variable $req := <http:request method="GET"
  href="http://zorbatest.28.io:8080/http-test-data/basic-auth/example_com.html"
  auth-method="Basic"
  send-authorization="true"
  username="zorba"
  password="blub"/>;

variable $http-res := httpc:send-request($req);

$http-res[1]/@status/fn:data(.)

