# FROM python:3.8.10-alpine
FROM python:3.8.10-slim

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache -r requirements.txt

COPY .. .

CMD ["sh", "-c", "python manage.py migrate && python manage.py runserver 0.0.0.0:8000"]