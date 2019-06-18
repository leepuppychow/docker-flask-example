FROM python:3.6-alpine

COPY requirements.txt /

WORKDIR /

RUN pip install -r requirements.txt

COPY . /app/

WORKDIR /app

CMD flask run -h 0.0.0.0 -p 5000