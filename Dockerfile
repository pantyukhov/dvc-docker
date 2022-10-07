FROM docker:latest

RUN apk add --update build-base python3 python3-dev zlib-dev jpeg-dev linux-headers git bash libgit2-dev linux-headers cmake
RUN apk add --update py-pip

RUN pip install --no-cache-dir --upgrade pip
RUN wget https://github.com/libgit2/libgit2/archive/refs/tags/v1.5.0.tar.gz -O libgit2-1.5.0.tar.gz && \
    tar xzf libgit2-1.5.0.tar.gz  && \
    cd libgit2-1.5.0  && \
    cmake .  && \
    make  && \
    make install


RUN pip install pygit2
RUN pip install dvc[awc] awscli

