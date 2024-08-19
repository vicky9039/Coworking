FROM python:3-slim

WORKDIR /usr/src/app

# Update the local package index with the latest packages from the repositories
RUN apt update -y
RUN apt install docker-ce docker-ce-cli containerd.io


# Update python modules to successfully build the required modules
RUN pip install --upgrade pip setuptools wheel

# COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .




CMD [ "python", "./app.py" ]