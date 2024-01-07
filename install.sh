#!/bin/bash

URL="https://updatecdn.meeting.qq.com/cos/bb4001c715553579a8b3e496233331d4/TencentMeeting_0300000000_3.19.0.401_x86_64_default.publish.deb"

wget ${URL} && mv TencentMeeting_0300000000_3.19.0.401_x86_64_default.publish.deb TencentMeeting.deb
apt install -y ./TencentMeeting.deb && rm TencentMeeting.deb