FROM python:3.10.4-alpine3.15

COPY app.py ./

ENTRYPOINT ["python", "app.py"]
