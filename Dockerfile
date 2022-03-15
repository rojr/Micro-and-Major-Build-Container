FROM amazonlinux

RUN yum install -y zip git figlet unzip ssh
RUN curl -sL https://rpm.nodesource.com/setup_14.x | bash
RUN yum install -y nodejs
RUN npm install serverless typescript webpack-cli @sentry/cli -g yarn --unsafe-perm

RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
RUN unzip awscliv2.zip
RUN ./aws/install

RUN     curl "https://aliyuncli.alicdn.com/aliyun-cli-linux-3.0.69-amd64.tgz" -o "aliyun.tgz" && \
        yum install -y tar && \
        tar xzvf aliyun.tgz && \
        mv ./aliyun /usr/local/bin/

CMD /bin/bash
