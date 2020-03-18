#!/bin/bash

amixer cset numid=9,iface=MIXER,name='Stop' 1 > /dev/null 2>&1
amixer cset numid=2,iface=MIXER,name='InChannelNumber' 1 > /dev/null 2>&1
amixer cset numid=2,iface=MIXER,name='InSampleRate' 8000 > /dev/null 2>&1
amixer cset numid=2,iface=MIXER,name='Capture Volume' 2 > /dev/null 2>&1
amixer cset numid=1,iface=MIXER,name='Playback Volume' 7 > /dev/null 2>&1
amixer cset numid=10,iface=MIXER,name='OutSampleRate' 44100 > /dev/null 2>&1
amixer cset numid=11,iface=MIXER,name='OutChannelNumber' 2 > /dev/null 2>&1
amixer cset numid=6,iface=MIXER,name='CodecAppMode' 0 > /dev/null 2>&1
amixer cset numid=7,iface=MIXER,name='StartPlay' 1 > /dev/null 2>&1
amixer cset numid=3,iface=MIXER,name='ITF' $1 > /dev/null 2>&1
amixer cset numid=4,iface=MIXER,name='SpkSel' > /dev/null 2>&1
amixer cset numid=5,iface=MIXER,name='ForceMainMic' 0 > /dev/null 2>&1
amixer cset numid=15,iface=MIXER,name='Commit Setup' 0 > /dev/null 2>&1

