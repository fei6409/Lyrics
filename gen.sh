#!/bin/bash
(
echo -e '<html>\n<head>\n\t<meta HTTP-EQUIV="Content-Type" CONTENT="text/html" charset="utf-8">\n\t<link rel="stylesheet" type="text/css" href="./style.css"></link>\n</head>\n<body>\n<h1 align=center>Lyrics Listing</h1>\n<hr/>\n'
ls -1 *.html | grep -v "^default\.html$" | grep -v "^index\.html$" | awk '{ printf "<a href=\"%s\">%s</a><br>\n",$0,$0 }'
echo -e "</body>\n</html>"
) > index.html
