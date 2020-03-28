FROM python:3.7-alpine

RUN apk update \ 
    &&	apk add git curl-dev libressl-dev libc-dev gcc 
RUN git clone https://github.com/xmendez/wfuzz
RUN apk del git
RUN rm -rf /wfuzz/.git
RUN adduser -D wfuzz \
    && chown -R wfuzz /wfuzz
USER wfuzz
WORKDIR wfuzz
ENV PATH=$PATH:/home/wfuzz/.local/bin
RUN pip install wfuzz
ENTRYPOINT ["./wfuzz"]
