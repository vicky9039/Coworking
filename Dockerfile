FROM python:3.8.10

# ENV DB_USERNAME "myuser"
# ENV DB_PASSWORD "mypassword"
# ENV DB_NAME "mydatabase"

RUN apt-get update -y

EXPOSE 5153

WORKDIR /app

COPY analytics /app/analytics
RUN pip install -r /app/analytics/requirements.txt

CMD ["python", "/app/analytics/app.py"]
