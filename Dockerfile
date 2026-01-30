FROM python:3.12-slim

WORKDIR /app

COPY . .

RUN pip install --upgrade pip setuptools wheel \
    && pip install .

CMD ["python", "-m", "django", "--version"]

