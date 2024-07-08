FROM python:3.10-slim-buster

WORKDIR /src

ENV APP_PORT 5153

COPY ./analytics/requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY ./analytics .

CMD python app.py

EXPOSE ${APP_PORT}