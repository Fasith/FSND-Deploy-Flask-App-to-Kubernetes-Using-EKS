FROM python:stretch

COPY . /App

WORKDIR /App

RUN pip3 install -r requirements.txt

ENTRYPOINT ["gunicorn", "-b" ,":8080" ,"main:APP" ]
