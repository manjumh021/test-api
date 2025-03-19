FROM python:3.10.1
COPY . .
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 5000
CMD ["python3", "app.py"]
