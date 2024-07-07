FROM python:3.10-slim-buster

WORKDIR /src

COPY ./analytics .

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

CMD python app.py
