FROM python:3-slim

WORKDIR /usr/src/app

# Update the local package index with the latest packages from the repositories
RUN apt update -y

COPY requirements.txt ./

# COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Update python modules to successfully build the required modules
RUN pip install --upgrade pip setuptools wheel

COPY . .

CMD [ "python", "./app.py" ]