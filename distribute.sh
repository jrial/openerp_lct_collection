#!/bin/bash

if [ "$1" = "clean" ] ; then
    echo "Cleaning modules"
    for i in `find . -maxdepth 1 -type d -not -name '\.*'` ; do
        if [ -f ${i}.tar.gz ] ; then
            echo -ne "Removing ${i}.tar.gz"
            rm ${i}.tar.gz && echo " [OK]" || echo " [FAIL]"
        fi
    done
    echo "Done"
else
    echo "Packaging modules"
    for i in `find . -maxdepth 1 -type d -not -name '\.*'` ; do
        echo -ne "Packaging ${i}"
        tar zcf ${i}.tar.gz ${i} --exclude=.git* && echo " [OK]" || echo " [FAIL]"
    done
    echo "Done"
fi
