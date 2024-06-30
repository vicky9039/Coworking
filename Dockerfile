
# Use Python Python 3.10 as the base image
FROM python:3.9-slim-buster

# Set the working directory inside the container
WORKDIR /app

# Copy the current directory contents to the container at /app
COPY /analytics/ /app

RUN apt update -y
RUN apt install build-essential libpq-dev -y
RUN pip install --upgrade pip setuptools wheel
RUN pip install --upgrade pip && pip install -r requirements.txt
# RUN pip install --no-cache-dir -r /app/requirements.txt

# Expose 5000
EXPOSE 5000

# # Set an environment variable
# ENV DB_USERNAME myuser
# ENV DB_PASSWORD mypassword
# ENV DB_HOST=127.0.0.1
# ENV DB_PORT=5433
# ENV DB_NAME=mydatabase

# Run the application when the container starts
CMD python app.py