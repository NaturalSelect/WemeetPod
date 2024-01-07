FROM naturalselect/electronpod:latest
LABEL "Maintainer"="NaturalSelect<2145973003@qq.com>"
RUN apt update
RUN apt install -y wget libgl1 libegl1 desktop-file-utils libqt5gui5
WORKDIR /root
COPY "install.sh" "./install.sh"
RUN ./install.sh && rm ./install.sh
RUN rm -rf /var/lib/apt/lists/*
ENTRYPOINT [ "/opt/wemeet/wemeetapp.sh" ]