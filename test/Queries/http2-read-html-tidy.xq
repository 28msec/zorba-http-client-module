(: test content having a content type text/html that needs to run through tidy :)
import module namespace http = "http://expath.org/ns/http-client";
declare namespace h = "http://expath.org/ns/http-client";

variable $req := <h:request method="GET"
               href="http://www.zorba-xquery.com/http-client/to-tidy.html"
               auth-method="Basic"
               send-authorization="true"
               username="zorba"
               password="blub"/>;

variable $res := http:send-request($req, ());

$res[2]


