FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install -y python3.11 python3-pip libpq-dev python3.11-dev build-essential

WORKDIR /app

COPY requirements.txt .
COPY app.py .

RUN python3.11 -m pip install --no-cache-dir -r requirements.txt

EXPOSE 5000

CMD ["python3.11", "app.py"]