FROM sameersbn/redmine:3.3.0

MAINTAINER timmy@cht.com.tw

ENV http_proxy http://10.160.3.88:8080
ENV https_proxy http://10.160.3.88:8080

WORKDIR /home/redmine/redmine/plugins

RUN git clone https://github.com/ixti/redmine_tags.git
RUN bundle install

CMD ["app:start"]



