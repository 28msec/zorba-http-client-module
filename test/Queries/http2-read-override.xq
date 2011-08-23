import module namespace http = "http://expath.org/ns/http-client";
declare namespace h = "http://expath.org/ns/http-client";

variable $req := <h:request method="GET"
               href="http://zorbatest.lambda.nu:8080/http-test-data/basic-auth/no-type.bin"
               auth-method="Basic"
               send-authorization="true"
               username="zorba"
               password="blub"
               override-media-type="text/html"/>;

variable $res := http:send-request($req, ());

$res[2]

