#!/bin/bash

DOWNLOAD_URL=

wget ${DOWNLOAD_URL} -O TencentMeeting.deb
apt install -y ./TencentMeeting.deb && rm TencentMeeting.deb