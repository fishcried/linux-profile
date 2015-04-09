#!/bin/bash

sed -i "/JB\/setup/d" $@
sed -i "s/highlight bash/CODESTART/g" $@
sed -i "s/highlight c/CODESTART/g" $@
sed -i "s/endhighlight /CODEEND/g" $@
sed -i "s/highlight /CODESTART/g" $@
sed -i "/CODESTART/,/CODEEND/s/^/\t/" $@
sed -i "s/.*CODESTART.*/\n/" $@
sed -i "s/.*CODEEND.*/\n/" $@

sed -i "s:assets/images:static/img:g" $@
sed -i "/^[[:space:]]*$/{
	N
	/^[[:space:]]*$/D
}" $@
