FROM python:3.11-slim
WORKDIR /app
COPY app/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY app/ ./
EXPOSE 30080
CMD ["gunicorn", "--bind", "0.0.0.0:30080", "app:app"]

