(: test content having a content type ending with +xml, i.e. image/svg+xml :)
import module namespace http = "http://expath.org/ns/http-client";
declare namespace h = "http://expath.org/ns/http-client";

local variable $req := <h:request method="GET"
               href="http://www.zorba-xquery.com/http-client/svg/example.svg"
               auth-method="Basic"
               send-authorization="true"
               username="zorba"
               password="blub"/>;

local variable $http-res := http:send-request($req, ());

$http-res[2]

