FROM python:3.8
MAINTAINER huisam@naver.com

COPY . /app/server

WORKDIR /app/server

RUN pip3 install -r requirements.txt
RUN python setup.py install

ENTRYPOINT ["python", "Server.py"]
