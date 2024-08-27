FROM python:3

WORKDIR /usr/src/app

# Update the local package index with the latest packages from the repositories
RUN apt update -y

COPY ./analytics/requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

# Update python modules to successfully build the required modules
RUN pip install --upgrade pip setuptools wheel

# Copy the contents of the analytics folder into the container's working directory
COPY ./analytics/ .

CMD ["python", "./app.py"]
