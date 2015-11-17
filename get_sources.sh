#!/bin/sh
NR=$(rpm -q --specfile *.spec --qf "%{name}-%{version}")

rm -rf $NR
git clone -q -b f23/master --recursive git://github.com/RussianFedora/rfremix-kickstarts.git $NR
tar cjf $NR.tar.bz2 $NR --exclude=.git
rm -rf $NR
