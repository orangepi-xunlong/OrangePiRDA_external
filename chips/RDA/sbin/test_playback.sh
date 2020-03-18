#!/bin/bash

amixer cset numid=2,iface=MIXER,name=InChannelNumber 1
amixer cset numid=2,iface=MIXER,name=InSampleRate 8000
amixer cset 'numid=2,iface=MIXER,name=Capture Volume' 2
amixer cset 'numid=1,iface=MIXER,name=Playback Volume' 7
amixer cset numid=10,iface=MIXER,name=OutSampleRate 44100
amixer cset numid=11,iface=MIXER,name=OutChannelNumber 2
amixer cset numid=6,iface=MIXER,name=CodecAppMode 0
amixer cset numid=7,iface=MIXER,name=StartPlay 1
amixer cset numid=3,iface=MIXER,name=ITF 1
amixer cset numid=4,iface=MIXER,name=SpkSel
amixer cset numid=5,iface=MIXER,name=ForceMainMic 0
amixer cset 'numid=15,iface=MIXER,name=Commit Setup' 0

aplay /usr/local/sbin/TestAudio.wav
