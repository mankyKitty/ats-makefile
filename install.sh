#!/usr/bin/env bash
wget http://ats-lang.sourceforge.net/IMPLEMENT/Postiats/ATS2-Postiats-0.3.9.tgz
tar xvf ATS2-Postiats-0.3.9.tgz
cd ATS2-Postiats-0.3.9 && ./configure && make && sudo make install
cd ../ || exit
rm -rf ATS2-Postiats-0.3.9
export PATSHOME=/usr/local/lib/ats2-postiats-0.3.9/
