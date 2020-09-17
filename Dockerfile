FROM amazonlinux

RUN yum install -y zip git figlet unzip
RUN curl -sL https://rpm.nodesource.com/setup_12.x | bash
RUN yum install -y nodejs
RUN npm install serverless typescript webpack-cli @sentry/cli -g --unsafe-perm

RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
RUN unzip awscliv2.zip
RUN ./aws/install

CMD /bin/bash
