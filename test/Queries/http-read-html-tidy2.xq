import module namespace http = "http://expath.org/ns/http-client";

declare namespace h = "http://expath.org/ns/http-client";

local variable $h := <h:request method="GET"
               href="http://www.zorba-xquery.com/http-client/utf8.html"
               auth-method="Basic"
               send-authorization="true"
               username="zorba"
               password="blub"/>;

local variable $r := http:send-request($h);

<r>{($r//text()[starts-with(., "Fran")])[1]}</r>
