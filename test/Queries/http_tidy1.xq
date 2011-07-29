import module namespace http = "http://expath.org/ns/http-client";

local variable $tmp := http:send-request((), "http://www.google.com/search?q=zorba+xquery");

$tmp[1]/@status/fn:data(.)

