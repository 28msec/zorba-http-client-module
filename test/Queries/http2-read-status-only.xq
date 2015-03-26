import module namespace http = "http://expath.org/ns/http-client";
declare namespace h = "http://expath.org/ns/http-client";

variable $req := <h:request method="GET"
               href="http://zorbatest.28.io:8080/http-test-data/basic-auth/no-type.blub"
               auth-method="Basic"
               send-authorization="true"
               username="zorba"
               password="blub"
               override-media-type="text/html"
               status-only="true"/>;

variable $res := http:send-request($req, ());

fn:not(exists($res[1]//*:body))
