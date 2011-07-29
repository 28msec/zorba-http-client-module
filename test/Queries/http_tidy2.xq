import module namespace httpc = "http://expath.org/ns/http-client";

declare namespace http = "http://expath.org/ns/http-client";

local variable $req := <http:request method="GET"
  href="http://www.zorba-xquery.com/http-client/example_com.html"
  auth-method="Basic"
  send-authorization="true"
  username="zorba"
  password="blub"/>;

local variable $http-res := httpc:send-request($req);

$http-res[1]/@status/fn:data(.)

