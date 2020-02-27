FROM amazonlinux

RUN yum install -y zip git nodejs npm
RUN npm install serverless typescript webpack-cli -g

CMD /bin/bash
