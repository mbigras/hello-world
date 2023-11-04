FROM python:3.12.0-bookworm

COPY app.py ./

ENTRYPOINT ["python", "app.py"]
