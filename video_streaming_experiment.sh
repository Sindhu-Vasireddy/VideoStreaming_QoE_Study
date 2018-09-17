#!/bin/bash
basedir=$(pwd);
#myDir="/home/ats/siva16"
#PathToVideo= "/home/ats/ss"
#runtime=$1
mylogfile=$1
declare -A matrix
R="big_buck_bunny_480p_30mb.mp4
big_buck_bunny_360p_h264.mp4
big_buck_bunny_240p_20mb.mp4"
r=($R)
I="0 2 7"
id=($I)
S="shaper.sh
shaper1.sh
shaper2.sh"
stall=($S)
#A matrix of 27 elements with numbers from 1 to 27 in sequence:
a="$(seq 1 27 )"
b=($a)
echo $a
for((i=1;i<=3;i++)) do
 for((j=1;j<=9;j++)) do
 if [ "$i" -eq 1 ]
 then
 matrix[$i,$j]=${b[($j)-1]}
 fi
 if [ "$i" -eq 2 ]
 then
 matrix[$i,$j]=${b[($j)+8]}
 fi
 if [ "$i" -eq 3 ]
 then
 matrix[$i,$j]=${b[($j)+17]}
 fi
 echo ${matrix[$i,$j]}
 done
done
echo "The Matrix element : ${matrix[1,1]}"
#Shuffle the numbers from 1 to 27 and generate a sequence:
c="$(seq 1 27 | shuf)"
d=($c)
echo $c
echo ${d[0]}
# Search for the number from the re-arranged sequence in the 3*9 matrix:
for((k=0;k<27;k++)) do
 for((t=0;t<=2;t++)) do
 for((f=1;f<=3;f++)) do
 for((g=3*$t+1;g<=3+3*$t;g++)) do
 if [ ${matrix[$f,$g]} -eq ${d[$k]} ]; then
44
 echo "Sequence number : ${d[$k]}"
 echo "Matrix $f,$g : ${matrix[$f,$g]}"
 sleep ${id[$g-3*$t-1]}
 echo "Initial Delay : ${id[$g-3*$t-1]}"
 reftime=$(date +%s)
 myfname="$basedir/vlclog.$reftime"
# myexpid=$EXPID;
# myrunid=$RUNID;
 echo "LOG: $myfname "
# echo "Delay: $delay "
 date +%s
 cvlc --extraintf=http:logger --verbose=5 --file-logging --logfile=$myfname
udp://@192.168.0.2:1234 2>/dev/null &
 ping -c 1 192.168.1.2
 source $basedir/${stall[$t]} &
 echo "Stallings file : $basedir/${stall[$t]}"
 alias vlc="vlc --file-caching=10000"
 ssh VDIsrv "/usr/bin/cvlc -I dummy /home/ats/ss/${r[$f-1]} --sout
'#transcode{vcodec=h264,acodec=mpga}:standard{access=udp,dst=192.168.0.2:1234}' vlc://quit
2>/dev/null"
 echo "Video Resolution : ${r[$f-1]}"
 date +%s
 sleep 5
 killall vlc
 date +%s
 Error1=$(grep discontinuity $myfname | wc -l)
 Error2=$(grep 'picture is too late' $myfname | wc -l)
 echo "RESULT: I found $Error1 discontinuities in the log at $delay "
 echo "RESULT: I found $Error2 pictures too late in the log at $delay"
 echo "$reftime $runtime $delay $Error1 $Error2" >> $mylogfile
 echo "SUCCESS"
 fi
 done
 done
 done
done