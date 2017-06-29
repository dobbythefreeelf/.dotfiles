#!/bin/bash
# see http://www.sno.phy.queensu.ca/~phil/exiftool/

# -createdate
# -datetimeoriginal
# -gpsdatetime
# -filemodifydate

# exiftool -r -d "%Y/%m/%d/%H%M%S%%-c.%%e" "-FileName<CreateDate" .
exiftool -r -d "%Y/%m/%d" "-Directory<CreateDate" $1
