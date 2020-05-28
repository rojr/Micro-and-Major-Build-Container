FROM amazonlinux

RUN yum install -y zip git
RUN curl -sL https://rpm.nodesource.com/setup_12.x | bash
RUN yum install -y nodejs
RUN npm install serverless typescript webpack-cli @sentry/cli -g --unsafe-perm

CMD /bin/bash
