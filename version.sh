#!/bin/bash

if test -z ${TAG}
then
    export TAG="3.19.2"
fi

if test -z ${URL}
then
    export URL="https://updatecdn.meeting.qq.com/cos/fb7464ffb18b94a06868265bed984007/TencentMeeting_0300000000_3.19.2.400_x86_64_default.publish.officialwebsite.deb"
fi