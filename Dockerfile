FROM naturalselect/electronpod:latest
LABEL "Maintainer"="NaturalSelect<2145973003@qq.com>"
RUN apt update
RUN apt install -y wget libgl1 libegl1 desktop-file-utils libqt5gui5
WORKDIR /root
RUN wget https://updatecdn.meeting.qq.com/cos/bb4001c715553579a8b3e496233331d4/TencentMeeting_0300000000_3.19.0.401_x86_64_default.publish.deb
RUN apt install -y ./TencentMeeting_0300000000_3.19.0.401_x86_64_default.publish.deb && rm TencentMeeting_0300000000_3.19.0.401_x86_64_default.publish.deb
RUN rm -rf /var/lib/apt/lists/*
ENTRYPOINT [ "/opt/wemeet/wemeetapp.sh" ]