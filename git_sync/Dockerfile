FROM alpine:3.14
RUN apk update && apk add bash
RUN apk add git
RUN apk add --update --no-cache openssh
RUN mkdir -p /root/.ssh/ && \
    echo "$SSH_KEY" > /root/.ssh/id_rsa.pub && \
    chmod -R 600 /root/.ssh/ && \
    ssh-keyscan -t rsa github.com >> ~/.ssh/known_hosts
RUN git init && git remote add origin https://github.com/Hamiedamr/simple_paas.git
COPY ./git_sync/sync.sh /sync

RUN sed -i 's/\r$//g' /sync
RUN chmod +x /sync