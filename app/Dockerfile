FROM python:3.9-slim

WORKDIR /app
RUN pip install --no-cache-dir Flask
COPY . .
EXPOSE 8080
ENV FLASK_APP=app.py
CMD ["python", "app.py"]
