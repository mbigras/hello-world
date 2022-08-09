FROM python:3.10.6-alpine3.16

COPY app.py ./

ENTRYPOINT ["python", "app.py"]
