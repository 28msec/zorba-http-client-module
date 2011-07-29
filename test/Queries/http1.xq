import module namespace http = "http://expath.org/ns/http-client";

local variable $res := 
http:send-request((), "http://www.zorba-xquery.com/rest-tests/http1.xml");

$res[2]

