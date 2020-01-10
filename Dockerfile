FROM python:3.7.2-stretch

COPY . /App

WORKDIR /App

RUN pip3 install -r requirements.txt

ENTRYPOINT ["gunicorn", "-b" ,":8080" ,"main:APP" ]
