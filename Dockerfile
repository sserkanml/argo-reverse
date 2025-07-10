FROM python:3.11-slim

WORKDIR /app
COPY app /app
COPY app/requirements.txt .

RUN pip install -r requirements.txt

EXPOSE 5000
CMD ["python", "app.py"]
