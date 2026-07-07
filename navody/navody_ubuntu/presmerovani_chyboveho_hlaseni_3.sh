#!/usr/bin/bash

ls aaa/ 2>/dev/null || mkdir -v aaa



#!/usr/bin/bash

#ls $1
ls $1 1>/dev/null 2>/dev/null
if [ "$?" != "0" ]; then
echo "chyba"
exit 0
fi

