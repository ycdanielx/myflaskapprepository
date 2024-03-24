FROM python:3.9-slim

WORKDIR /app

COPY . /app

RUN pip install --no-cache-dir flask flask_cors gunicorn

EXPOSE 5000

ENV NAME World

CMD ["gunicorn", "--bind", "0.0.0.0:5000", "app:app"]
