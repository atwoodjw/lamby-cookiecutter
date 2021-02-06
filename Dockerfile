FROM amazon/aws-sam-cli-build-image-ruby2.7

# Node for JavaScript.
RUN curl -sL https://rpm.nodesource.com/setup_12.x | bash - && \
    yum install -y nodejs && \
    curl --silent --location https://dl.yarnpkg.com/rpm/yarn.repo | tee /etc/yum.repos.d/yarn.repo && \
    rpm --import https://dl.yarnpkg.com/rpm/pubkey.gpg && \
    yum install -y yarn

RUN yum install -y postgresql-devel

WORKDIR /var/task
