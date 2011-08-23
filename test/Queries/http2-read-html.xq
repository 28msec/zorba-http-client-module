import module namespace http = "http://expath.org/ns/http-client";
declare namespace h = "http://expath.org/ns/http-client";

variable $req := <h:request method="GET"
               href="http://zorbatest.lambda.nu:8080/http-test-data/basic-auth/doc.html"
               auth-method="Basic"
               send-authorization="true"
               username="zorba"
               password="blub"/>;

variable $res := http:send-request($req, ());

$res[2]

