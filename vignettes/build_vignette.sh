#! /bin/sh

if [ "A$1" = "A" ] ; then
    Rbinary="R" ;
else
    Rbinary="$1" ;
fi

rm tigre.Rnw
cp -p tigre.Rnw.real_source tigre.Rnw
$Rbinary CMD Sweave tigre.Rnw
rm tigre.Rnw
mv tigre.tex tigre.Rnw
