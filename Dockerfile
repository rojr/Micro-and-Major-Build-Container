FROM amazonlinux

RUN yum install -y zip git
RUN npm install serverless typescript webpack-cli -g

CMD /bin/bash