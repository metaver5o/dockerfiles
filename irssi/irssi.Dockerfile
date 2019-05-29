FROM alpine
LABEL maintainer M Matos marco@mmatos.com

    RUN apk add --update \ 
        git \ 
        perl \
        autoconf \
        automake \
        libtool \
        make \
        gcc \
        g++ \
        glib-dev \
        openssl-dev \
        ncurses-dev \ 
        sudo 
    
    WORKDIR /opt
    RUN git clone https://github.com/irssi/irssi  .
    RUN ./autogen.sh
    RUN make && sudo make install
    RUN ls 
    ENTRYPOINT [ "irssi" ]
    CMD ["--server", "irc.freenode.net"]
