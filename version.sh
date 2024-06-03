#!/bin/bash

if test -z ${TAG}
then
    export TAG="3.19.1"
fi

if test -z ${URL}
then
    export URL="https://updatecdn.meeting.qq.com/cos/fcdc2a010a25561a4d23e168b677b493/TencentMeeting_0300000000_3.19.1.400_x86_64_default.publish.deb"
fi