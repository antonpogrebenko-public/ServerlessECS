FROM --platform=linux/amd64 python:3.12.6-bullseye as build
RUN mkdir /app
WORKDIR /app

RUN apt-get update && apt-get install -y \
    libpango-1.0-0 \
    libcairo2 \
    libffi-dev \
    shared-mime-info \
    && rm -rf /var/lib/apt/lists/*

ENV PYTHONPATH=/app

COPY src src/

COPY requirements.txt .

RUN pip install -r requirements.txt


CMD ["python", "src/app.py"]
