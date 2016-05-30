FROM python:2.7

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY requirements.txt /usr/src/app/
RUN pip install --no-cache-dir -r requirements.txt -i http://mirrors.aliyun.com/pypi/simple/ --trusted-host mirrors.aliyun.com

COPY media  /usr/src/app/media
COPY web_django  /usr/src/app/web_django
COPY static /usr/src/app/static
COPY templates /usr/src/app/templates
COPY *.sh /usr/src/app/
COPY manage.py /usr/src/app/manage.py
