#!/usr/bin/env bash
wget https://downloads.sourceforge.net/project/ats2-lang/ats2-lang/ats2-postiats-0.3.9/ATS2-Postiats-0.3.9.tgz
tar xvf ATS2-Postiats-0.3.9.tgz
cd ATS2-Postiats-0.3.9 && ./configure && make && sudo make install
cd ../ || exit
rm -rf ATS2-Postiats-0.3.9
export PATSHOME=/usr/local/lib/ats2-postiats-0.3.9/
