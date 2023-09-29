FROM python:3.11.0
ENV PYTHONBUFFERED=1
ENV PYTHONDONTWRITEBYTECODE=1


RUN apt-get update && apt-get -y dist-upgrade
RUN apt install -y htop vim

WORKDIR /application
COPY requirements.txt .

RUN pip install --upgrade pip
RUN pip install --no-cache-dir --disable-pip-version-check --requirement requirements.txt

COPY . .