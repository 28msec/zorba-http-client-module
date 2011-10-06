import module namespace http = 'http://expath.org/ns/http-client';

declare namespace err = 'http://expath.org/ns/error';

http:send-request(<http:request method="GET" href="http://www.google.com/" override-media-type="text/xml"/>)

