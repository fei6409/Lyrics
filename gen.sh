#!/bin/bash
(
echo -e "<html>\n<body>\n<h1>Directory listing</h1>\n<hr/>\n<pre>"
ls -1 *.html | grep -v "^index\.html$" | awk '{ printf "<a href=\"%s\">%s</a>\n",$0,$0 }'
echo -e "</pre>\n</body>\n</html>"
) > index.html
