FROM  centos:latest

RUN  yum install python3 python3-devel gcc-c++ -y

RUN  pip3 install keras tensorflow 

RUN  pip3 install --upgrade pip tensorflow

RUN   pip3 install flask  &&  mkdir templates

COPY  dl_model.h5  /  &&  app.py  /  &&  templates  /templates 

EXPOSE  1111

ENTRYPOINT  flask run --host=0.0.0.0 --port=1111
