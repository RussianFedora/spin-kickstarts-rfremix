#!/bin/sh
NR=$(rpm -q --specfile *.spec --qf "%{name}-%{version}")

rm -rf $NR
git clone -q -b f20/master git://github.com/Tigro/spin-kickstarts-rfremix.git $NR
tar cjf $NR.tar.bz2 $NR --exclude=.git
rm -rf $NR
