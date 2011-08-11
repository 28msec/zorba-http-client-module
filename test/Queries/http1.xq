import module namespace http = "http://expath.org/ns/http-client";

variable $res := 
http:send-request((), "http://www.zorba-xquery.com/rest-tests/http1.xml");

$res[2]

