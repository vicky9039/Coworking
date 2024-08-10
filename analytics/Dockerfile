FROM python:3.8.10

ENV DB_USERNAME "myuser"
ENV DB_PASSWORD "mypassword"
ENV DB_NAME "mydatabase"

RUN apt-get update -y

EXPOSE 5153

COPY requirements.txt ./
RUN pip install -r requirements.txt

WORKDIR /workspace

ADD . /workspace

CMD ["python", "app.py"]
