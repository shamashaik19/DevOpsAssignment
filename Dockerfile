FROM python:3.11-slim
WORKDIR /app
COPY app/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY app/ ./
EXPOSE 33080
CMD ["gunicorn", "--bind", "0.0.0.0:5000", "app:app"]

