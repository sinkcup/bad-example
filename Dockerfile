FROM sinkcup/nginx-mkdocs:1.0.0
MAINTAINER sinkcup <sinkcup@163.com>

RUN pip install mkdocs-material

ADD . /usr/share/nginx/portal
RUN mkdocs build && \
  grep -lr 'href="//fonts.googleapis.com/' site | xargs sed -i '/href="\/\/fonts\.googleapis\.com/d'
