# Python Python 3.10 as the base image
FROM public.ecr.aws/docker/library/python:3.10-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the current directory contents to the container at /app
COPY ./analytics/ /app

RUN apt update -y
RUN apt install build-essential libpq-dev -y
RUN pip install --upgrade pip setuptools wheel
RUN pip install --upgrade pip && pip install -r requirements.txt

# Run the application when the container starts
CMD python app.py