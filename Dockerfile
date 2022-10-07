FROM docker:latest

RUN wget https://github.com/iterative/dvc/releases/download/1.9.1/dvc_1.9.1_amd64.deb
RUN apk add --update build-base py-pip python3 python3-dev zlib-dev jpeg-dev git linux-headers cmake
RUN pip install -U pip
RUN pip install dvc[s3] awscli
