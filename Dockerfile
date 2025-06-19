FROM python:3.11-slim
WORKDIR /app
COPY main.py .
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
ENV PYTHONUNBUFFERED=1
CMD ["python", "main.py"]