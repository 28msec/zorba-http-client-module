import module namespace http = "http://expath.org/ns/http-client";

declare namespace h = "http://expath.org/ns/http-client";

variable $h := <h:request method="GET"
               href="http://zorbatest.lambda.nu:8080/http-test-data/basic-auth/utf8.html"
               auth-method="Basic"
               send-authorization="true"
               username="zorba"
               password="blub"/>;

variable $r := http:send-request($h);

<r>{($r//text()[starts-with(., "Fran")])[1]}</r>
